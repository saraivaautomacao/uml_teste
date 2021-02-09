unit ufrConfiguracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,inifiles, Vcl.StdCtrls, Vcl.ExtCtrls, LabeledCtrls,
  Vcl.Buttons, Vcl.Mask, JvExMask, JvToolEdit, JvExStdCtrls, JvButton, JvCtrls, JvExButtons,
  JvBitBtn, Vcl.Imaging.jpeg, ACBrBase, ACBrEnterTab, JvBaseEdits,ACBrPosPrinter,system.typinfo,vcl.printers;

type
  TfrmConfiguracao = class(TForm)
    GroupBox1: TGroupBox;
    botaoConfirma: TJvBitBtn;
    botaoCancela: TJvImgBtn;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    editNomeIpServidor: TEdit;
    Label4: TLabel;
    editBaseDados: TJvFilenameEdit;
    botaoTestarBalcao: TSpeedButton;
    editPorta: TEdit;
    Label1: TLabel;
    btDaruma: TBitBtn;
    imgFireBirdBalcao: TImage;
    ACBrEnterTab1: TACBrEnterTab;
    GroupBox3: TGroupBox;
    editHorizontal: TLabeledCalcEdit;
    editVertical: TLabeledCalcEdit;
    Button1: TButton;
    cbxPorta: TComboBox;
    cbxModelo: TComboBox;
    btSearchPorts: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    cbCortarPapel: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure botaoTestarBalcaoClick(Sender: TObject);
    procedure btDarumaClick(Sender: TObject);
    procedure botaoConfirmaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btSearchPortsClick(Sender: TObject);
    procedure cbxModeloChange(Sender: TObject);
    procedure cbxPortaChange(Sender: TObject);
  private
    { Private declarations }
    procedure GravarConfiguracao;
    procedure LerConfiguracao;
  public
    { Public declarations }
  end;

var
  frmConfiguracao: TfrmConfiguracao;

implementation

{$R *.dfm}

uses Dados,rotinas;



procedure TfrmConfiguracao.botaoConfirmaClick(Sender: TObject);
begin
    gravarconfiguracao;
    modalresult:=mrok;
end;

procedure TfrmConfiguracao.botaoTestarBalcaoClick(Sender: TObject);
begin
      dmMod.fdConPrinc.Connected := False;
     try
       dmMod.fdConPrinc.Params.DriverID:='FB';
       dmMod.fdConPrinc.params.database:=editBaseDados.text;
       dmMod.fdConPrinc.params.Add('server='+ editNomeIpServidor.text);
       dmMod.fdConPrinc.params.Add('port='+editPorta.text);
       dmMod.fdConPrinc.params.Add('user_name=SYSDBA');
       dmMod.fdConPrinc.params.Add('password=masterkey');
       botaoConfirma.Enabled := True;
     except
        on E: Exception do
        Begin
          MessageDlg('Erro ao conectar!'#13'Erro: ' + E.Message, mtError, [mbOK],  0);
          botaoConfirma.Enabled := False;
          exit;
        End;
     end;
     Application.MessageBox('Conexão realizada com sucesso!', 'Informação do Sistema', MB_OK + MB_ICONINFORMATION);
     gravarconfiguracao;
end;

procedure TfrmConfiguracao.btDarumaClick(Sender: TObject);

var
    Memo:TStringList;
begin

  with dmmod do
  begin
     try
        Memo:=TStringList.Create;

        ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbxModelo.ItemIndex );
        ACBrPosPrinter1.Porta  := cbxPorta.Text;
        ACBrPosPrinter1.CortaPapel :=  cbCortarPapel.Checked;

       memo.Clear;
      // Memo.Add('<e>');
       Memo.Add('');
       memo.add('    TESTE DE IMPRESSAO');

       // Desliga Expandido... ESC dc4

       memo.add('--------------------------------------------');
       memo.add('            SARAIVA AUTOMACAO               ');
       memo.add('           Vr. Jose Veras, 1341             ');
       memo.add('                Crateus-Ceara               ');
       memo.add('---------------------------------------------');
       memo.add('Cod  Produto      Quant    Unitário    Total');
       memo.add('---------------------------------------------');
       memo.add('001  PRODUTO UM      1,0      17,50     17,50');
       memo.add('002  PRODUTO DOIS   1,0 CX    5,60      5,60');
       memo.add('003  PRODUTO TREIS   2,0 CX    5,00     10,00');
       memo.add('---------------------------------------------');
       // Liga Negrito... ESC F

       memo.add('     TOTAL                   R$        33,10');
       // Desliga Negrito... ESC H

       memo.add('     Dinheiro                R$        50,00');
       memo.add('                             ---------------');
       memo.add('     Troco                   R$        16,90');
       Memo.Add('');
       Memo.Add('');
       Memo.Add('');
       //Memo.Add('</fn>');
       Memo.Add('</corte_total>');
       ACBrPosPrinter1.ativar;
       ACBrPosPrinter1.Imprimir(memo.Text);
       ACBrPosPrinter1.Desativar;
     finally
       FreeAndNil(memo);
     end;
     GravarConfiguracao;
     LerConfiguracao;
  end;
end;








procedure TfrmConfiguracao.btSearchPortsClick(Sender: TObject);

var
  K: Integer;
begin
  cbxPorta.Items.Clear;
  dmMod.ACBrPosPrinter1.Device.AcharPortasSeriais( cbxPorta.Items );

  {$IfDef MSWINDOWS}
   dmMod.ACBrPosPrinter1.Device.WinUSB.FindUSBPrinters;
   for K := 0 to dmMod.ACBrPosPrinter1.Device.WinUSB.DeviceList.Count-1 do
     cbxPorta.Items.Add('USB:'+dmMod.ACBrPosPrinter1.Device.WinUSB.DeviceList.Items[K].DeviceName);
  {$EndIf}

  For K := 0 to Printer.Printers.Count-1 do
    cbxPorta.Items.Add('RAW:'+Printer.Printers[K]);

  cbxPorta.Items.Add('LPT1') ;
  cbxPorta.Items.Add('\\localhost\Epson') ;
  cbxPorta.Items.Add('c:\temp\ecf.txt') ;
  cbxPorta.Items.Add('TCP:192.168.0.31:9100') ;

  {$IfNDef MSWINDOWS}
   cbxPorta.Items.Add('/dev/ttyS0') ;
   cbxPorta.Items.Add('/dev/ttyS1') ;
   cbxPorta.Items.Add('/dev/ttyUSB0') ;
   cbxPorta.Items.Add('/dev/ttyUSB1') ;
   cbxPorta.Items.Add('/tmp/ecf.txt') ;
  {$EndIf}
end;

procedure TfrmConfiguracao.Button1Click(Sender: TObject);
begin
   GravarConfiguracao;
   Application.MessageBox('Necessário iniciar o sistema!', 'Informação do Sistema', MB_OK + MB_ICONINFORMATION);
end;

procedure TfrmConfiguracao.cbxModeloChange(Sender: TObject);
begin
  try
    dmMod.ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbxModelo.ItemIndex ) ;
  except
     cbxModelo.ItemIndex := Integer( dmMod.ACBrPosPrinter1.Modelo ) ;
     raise ;
  end ;

end;

procedure TfrmConfiguracao.cbxPortaChange(Sender: TObject);
begin
try
  dmMod.ACBrPosPrinter1.Porta := cbxPorta.Text ;
  finally
    cbxPorta.Text := dmMod.ACBrPosPrinter1.Porta ;
  end ;
end;

procedure TfrmConfiguracao.FormShow(Sender: TObject);
var
 I: TACBrPosPrinterModelo;
  J: TACBrPosPaginaCodigo;
begin

    cbxModelo.Items.Clear ;
  For I := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
     cbxModelo.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(I) ) ) ;
  btSearchPortsClick(Sender);
  lerConfiguracao;
end;

procedure TfrmConfiguracao.GravarConfiguracao;
Var
   Ini     : TIniFile ;
   StreamMemo : TMemoryStream;
begin
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'prevenda.ini');
  try
      Ini.WriteString( 'impressora','modelo' , intTostr(cbxModelo.itemindex)) ;
      Ini.WriteString( 'impressora','porta' ,cbxPorta.text) ;
      Ini.WriteBool  ('impressora','cortarpapel' ,cbCortarPapel.Checked) ;
      Ini.WriteString( 'conexao','hostname' ,editNomeIpServidor.text) ;
      Ini.WriteString( 'conexao','port' ,editPorta.text) ;
      Ini.WriteString( 'conexao','database' ,editBaseDados.text) ;
      Ini.WriteInteger('Resolucao','horizontal' ,Trunc(editHorizontal.value)) ;
      Ini.WriteInteger('Resolucao','vertical' ,Trunc(editVertical.value)) ;

      //ShowMessage('Configurado com sucesso');
  finally
     Ini.Free ;
  end;

end;

procedure TfrmConfiguracao.LerConfiguracao;
Var
    Ini     : TIniFile ;
begin
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'prevenda.ini');

  try

      cbxModelo.ItemIndex := INI.ReadInteger('impressora','modelo', Integer(dmMod.ACBrPosPrinter1.Modelo));
      cbxPorta.Text :=INI.ReadString('impressora','Porta',dmMod.ACBrPosPrinter1.Porta);
      cbCortarPapel.Checked:=Ini.ReadBool('impressora','cortarpapel',true);
      cbxPortaChange(nil);
      editNomeIpServidor.text:=Ini.ReadString( 'conexao','hostname' ,'') ;
      editPorta.text:=Ini.ReadString('conexao','port','');

      editBaseDados.text:=Ini.ReadString('conexao','database','');
      editHorizontal.value:=Ini.ReadInteger('resolucao','horizontal',1366);
      editVertical.value:=Ini.ReadInteger('resolucao','vertical',768);
      impmodelo  := ini.ReadString('impressora','modelo','0');
      impname:=     ini.ReadString('impressora','porta','');
      CortarPApel:= ini.ReadBool('impressora','cortarpapel',true);
  finally
     Ini.Free ;
  end;
end;


end.
