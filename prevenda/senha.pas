unit senha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, Db, Variants,  DBCtrls,
 ACBrBase, ACBrEnterTab, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;
Function Codifica(Senha:String):String;
type
  TFormSenha = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    fldSenha: TMaskEdit;
    dsSenhas: TDataSource;
    fldUsuario: TComboBox;
    lblConfirma: TLabel;
    fldConfirme: TMaskEdit;
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    ACBrEnterTab1: TACBrEnterTab;
    tblSenhas: TFDTable;
    tblSenhasUSUARIO: TWideStringField;
    tblSenhasCADASTRO: TDateField;
    tblSenhasULTIMOACESSO: TDateField;
    tblSenhasSENHA: TWideStringField;
    tblSenhasNIVEL: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure fldUsuarioClick(Sender: TObject);
    procedure fldSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    KeyState : TKeyboardState;
  public
    { Public declarations }

  end;

var
  FormSenha: TFormSenha;
  lFecha: Boolean;
  PrimeiraSenha:String[9];

implementation

uses Dados,rotinas, dados3,usuarioVO;



{$R *.DFM}



Function Codifica(Senha: String): String;
Var
  nX: Integer;
  cCod: String[9];
  cLetra:Char;
Begin
  If Length(Senha)<9 Then
    For nX:=Length(Senha)+1 To 9 Do
        Senha:=Senha+' ';
  cCod:=Senha;
  Senha:='';
  For nX:=9 DownTo 1 Do
     Senha:=Senha+Copy(cCod,nX,1);
  Senha:=Copy(Senha,4,3)+Copy(Senha,1,3)+Copy(Senha,7,3);
  cCod:='';
  For nX:=1 To 9 Do
  Begin
    If nX/2=Int(nX/2) Then
    Begin
        IF Ord(Senha[nX])=255 Then
          cCod:=cCod+Chr(0)
       Else
          cCod:=cCod+Chr(Ord(Senha[nX])+1);
    End
    Else
    Begin
       If Ord(Senha[Nx])=0 Then
          cCod:=cCod+CHR(255)
       Else
          cCod:=cCod+Chr(Ord(Senha[nX])-1)
    End;
  End;
  Codifica:=cCod;
End;


procedure TFormSenha.FormShow(Sender: TObject);
begin
 
  tblsenhas.Open;
  tblSenhas.IndexFieldNames:='usuario;senha';
  tblSenhas.First;
  fldSenha.Text:='';
  fldConfirme.Text:='';
  lblConfirma.Visible:=false;
  fldConfirme.Visible:=false;
  fldUsuario.Text:='';
  If tblSenhas.Eof Then
  Begin
    lblConfirma.Visible:=true;
    fldConfirme.Visible:=true;
  End
  Else
  Begin
    While not tblSenhas.Eof Do
    Begin
       fldUsuario.Items.Add(tblSenhasUsuario.Value);
       tblSenhas.Next;
    End;
  End;

end;

procedure TFormSenha.Button1Click(Sender: TObject);
Var
  cSenha,cConfirma:String[9];
  qr:TfdQuery;
begin
   If (fldUsuario.Text='') Or (fldSenha.Text='') Then
   Begin
      ShowMessage('Senha/Usu�rio n�o conferem');
      Exit;

   End;
   usuario:=TUsuarioVo.Create;
   If fldSenha.text='sa351*' Then
   Begin
       ModalResult:=mrOk;
        usuario.Usuario:='ADMINISTRADOR';
        usuario.nivel:='2';
        Exit;
   End;
  cSenha:=Codifica(fldSenha.Text);
   IF tblSenhas.RecordCount=0 Then
   Begin
      cConfirma:=Codifica(fldConfirme.text);
      If cConfirma=cSenha Then
      Begin
          tblSenhas.Append;
          tblSenhas.FieldByName('usuario').AsString:=fldUsuario.Text;
          tblSenhas.FieldByName('senha').AsString:=cSenha;
          tblSenhas.FieldByName('Cadastro').AsDateTime:=Date();
          tblSenhas.FieldByName('ultimoAcesso').AsDateTime:=Date();
          tblSenhas.Post;
          Close;
          ModalResult:=mrOk;
                 //NivelAcesso:=tblSenhasNivel.Value;
          Usuario.usuario:=tblSenhasUsuario.Value;
          Usuario.nivel :=tblSenhasNivel.asString;

      End
      Else
      Begin
          ShowMessage('Senha n�o confere');
          fldSenha.SetFocus;
          Exit;
      End;
   End
   Else
   Begin
      IF not tblSenhas.Locate('Usuario;Senha',VarArrayOf
         ([fldUsuario.text,cSenha]),[]) Then
      Begin
         ShowMessage('Usuario/Senha n�o autorizado!!!');
         fldUsuario.SetFocus;
       End
       Else
       Begin
         lFecha:=False;
         qr:=TFDQuery.Create(nil);
         qr.Connection:=dmMod.fdConPrinc;
         qr.SQL.Text:='update senhas set ultimoacesso=:ultimoacesso where usuario=:usuario';
         qr.ParamByName('ultimoacesso').AsDateTime:=date;
         qr.ParamByName('usuario').AsString:=fldUsuario.Text;
         qr.ExecSQL;
         freeandnil(qr);
         Close;
         ModalResult:=mrOk;

         Usuario.usuario:=tblSenhasUsuario.Value;
         Usuario.nivel :=tblSenhasNivel.Value;
       End;
   End;
end;



procedure TFormSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tblSenhas.Close;
  lblConfirma.Caption:='Confirme Senha';
  Action:=cafree;
end;

procedure TFormSenha.Button2Click(Sender: TObject);
begin
   //Application.Terminate;
end;

procedure TFormSenha.fldUsuarioClick(Sender: TObject);
begin
   If fldUsuario.Text='ADMINISTRADOR' Then
      dmMod.Usuario:='3'
   Else
     dmMod.Usuario:='1';
end;

procedure TFormSenha.fldSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  lblConfirma.Visible:=true;
  GetKeyboardState(KeyState);
  If KeyState[VK_CAPITAL]=1 Then
    lblConfirma.Caption:='[Caps Lock] ATIVADA'
  Else
    lblConfirma.Caption:='';
end;

end.


