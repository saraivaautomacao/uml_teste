unit lkClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, Mask, DBCtrls, Db, Variants,
  RXDBCtrl, Buttons, ACBrBase, ACBrEnterTab, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TformLkClientes = class(TForm)
    pgPesq: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    fldNome: TEdit;
    Image1: TImage;
    Label1: TLabel;
    fldCodigo: TEdit;
    fldCpf: TMaskEdit;
    fldcnpj: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Bevel3: TBevel;
    DataSource1: TDataSource;
    TabSheet5: TTabSheet;
    fldContato: TEdit;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    dbGrid1: TRxDBGrid;
    rgTipo: TRadioGroup;
    ACBrEnterTab1: TACBrEnterTab;
    Query1: TFDQuery;
    Query1CODIGO: TWideStringField;
    Query1NOME: TWideStringField;
    Query1ENDERECO: TWideStringField;
    Query1BAIRRO: TWideStringField;
    Query1CIDADE: TWideStringField;
    Query1CEP: TWideStringField;
    Query1TELEFONE: TWideStringField;
    Query1ABREVIA: TWideStringField;
    Query1LIMITECRED: TFloatField;
    Query1LKTIPO: TIntegerField;
    Query1LKVEND: TIntegerField;
    Query1RG: TWideStringField;
    Query1CPF: TWideStringField;
    Query1CNPJ: TWideStringField;
    Query1INSC: TWideStringField;
    Query1DATANASC: TDateField;
    Query1CONTATO: TWideStringField;
    Query1ESTADO: TWideStringField;
    procedure pgPesqChange(Sender: TObject);
    procedure fldNomeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure fldCodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fldCpfKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure fldcnpjKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure fldAbrevKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure fldContatoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fldNomeExit(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure fldCodigoExit(Sender: TObject);
    procedure fldCpfExit(Sender: TObject);
    procedure fldcnpjExit(Sender: TObject);
    procedure fldContatoExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLkClientes: TformLkClientes;

implementation

Uses Rotinas,   dados1, Dados;
{$R *.DFM}

procedure TformLkClientes.pgPesqChange(Sender: TObject);
begin
  fldNome.Text := '';
  fldCodigo.Text := '';
  fldCpf.Text := '';
  fldcnpj.Text := '';

  fldContato.Text := '';

end;

procedure TformLkClientes.fldNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Key = VK_DOWN) or (Key = VK_UP) Then
    dbGrid1.SetFocus;

  { If fldNome.Text<>'' Then
    Query1.Locate('nome',fldNome.text,[loPartialKey,loCaseInsensitive]); }
end;

procedure TformLkClientes.FormShow(Sender: TObject);
begin
  pgPesq.ActivePageIndex := 0;
  fldNome.Text := '';
  fldNome.SetFocus;
  rgTipo.ItemIndex := 0;
  If posRegistro <> '' Then
  Begin
    fldCodigo.Text := posRegistro;
    fldCodigoExit(self);
  End;
end;

procedure TformLkClientes.fldCodigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Key = VK_DOWN) or (Key = VK_UP) Then
    dbGrid1.SetFocus;

end;

procedure TformLkClientes.fldCpfKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Key = VK_DOWN) or (Key = VK_UP) Then
    dbGrid1.SetFocus;
end;

procedure TformLkClientes.fldcnpjKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Key = VK_DOWN) or (Key = VK_UP) Then
    dbGrid1.SetFocus;

end;

procedure TformLkClientes.fldAbrevKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Key = VK_DOWN) or (Key = VK_UP) Then
    dbGrid1.SetFocus;

end;

procedure TformLkClientes.Button1Click(Sender: TObject);
begin
  Geral := Query1codigo.Value;
end;

procedure TformLkClientes.fldContatoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Key = VK_DOWN) or (Key = VK_UP) Then
    dbGrid1.SetFocus;

end;

procedure TformLkClientes.Button2Click(Sender: TObject);
begin
  geral:='';
end;

procedure TformLkClientes.dbGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Key = 9) or (Key = vk_return) Then
  Begin

    Button1Click(Sender);
    Close;
  End;
  If Key = 27 Then
    Close;
end;

procedure TformLkClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  posRegistro := Query1codigo.Value;
  Query1.Close;
end;

procedure TformLkClientes.fldNomeExit(Sender: TObject);
begin

  If fldNome.Text = '' Then
  begin
    // dbgrid1.setfocus;
    exit;
  end;
  Query1.Close;
  Query1.sql.Clear;
  Query1.sql.Add('Select codigo,nome,endereco,bairro,cidade,cep,telefone,' +
      'abrevia,limitecred,lktipo,lkvend,rg,cpf,cnpj,insc,datanasc,contato,estado');
  Query1.sql.Add(' from tabcli');
  Query1.sql.Add(' where codigo<>' + QuotedStr('99999'));
  If rgTipo.ItemIndex <> 3 Then
    Query1.sql.Add(' and nome like :Inicio');
  If rgTipo.ItemIndex = 0 Then
  Begin

    Query1.params[0].AsString := fldNome.Text + '%';
  End
  Else If rgTipo.ItemIndex = 1 Then
    Query1.params[0].AsString := '%' + Alltrim(fldNome.Text) + '%'
  Else If rgTipo.ItemIndex = 2 Then
    Query1.params[0].AsString := '%' + Alltrim(fldNome.Text);

  Query1.sql.Add('order by nome');
  Query1.Open;
  If rgTipo.ItemIndex = 3 Then
    Query1.locate('nome', fldNome.Text, [loPartialkey, locaseinsensitive]);
  If Query1.IsEmpty Then
  begin
    Mensagem('Nenhuma referÍncia encontrada');
    fldNome.SetFocus;
  end
  Else
    dbGrid1.SetFocus;
end;

procedure TformLkClientes.rgTipoClick(Sender: TObject);
begin
  fldNomeExit(self);
end;

procedure TformLkClientes.fldCodigoExit(Sender: TObject);
begin
  If fldCodigo.Text <> '' Then
  Begin
    Query1.Close;
    Query1.sql.Clear;
    Query1.sql.Add('Select codigo,nome,endereco,bairro,cidade,cep,telefone,' +
        'abrevia,limitecred,lktipo,lkvend,rg,cpf,cnpj,insc,datanasc,contato,estado');
    Query1.sql.Add(' from tabcli');
    Query1.sql.Add(' where codigo<>' + QuotedStr('99999')
        + ' and codigo=:codigo');
    Query1.params[0].AsString := StrZero(StrToInt(fldCodigo.Text), 5);
    Query1.Open;
  End;
end;

procedure TformLkClientes.fldCpfExit(Sender: TObject);
begin
  If RemoveChar(fldCpf.Text) <> '' Then
  Begin
    Query1.Close;
    Query1.sql.Clear;
    Query1.sql.Add('Select codigo,nome,endereco,bairro,cidade,cep,telefone,' +
        'abrevia,limitecred,lktipo,lkvend,rg,cpf,cnpj,insc,datanasc,contato,estado');
    Query1.sql.Add(' from tabcli');
    Query1.sql.Add(' where codigo<>' + QuotedStr('99999')
        + ' and cpf=:cpf');
    Query1.params[0].AsString := fldCpf.Text;
    Query1.Open;
    dbGrid1.SetFocus;
  End;
end;

procedure TformLkClientes.fldcnpjExit(Sender: TObject);
begin
  If RemoveChar(fldcnpj.Text) <> '' Then
  Begin
    Query1.Close;
    Query1.sql.Clear;
    Query1.sql.Add('Select codigo,nome,endereco,bairro,cidade,cep,telefone,' +
        'abrevia,limitecred,lktipo,lkvend,rg,cpf,cnpj,insc,datanasc,contato,estado');
    Query1.sql.Add(' from tabcli');
    Query1.sql.Add(' where codigo<>' + QuotedStr('99999')
        + ' and cnpj=:cnpj');
    Query1.params[0].AsString := fldcnpj.Text;
    Query1.Open;
    dbGrid1.SetFocus;
  End;
end;

procedure TformLkClientes.fldContatoExit(Sender: TObject);
begin
  If fldContato.Text <> '' Then
  Begin
    Query1.Close;
    Query1.sql.Clear;
    Query1.sql.Add('Select codigo,nome,endereco,bairro,cidade,cep,telefone,' +
        'abrevia,limitecred,lktipo,lkvend,rg,cpf,cnpj,insc,datanasc,contato,estado');
    Query1.sql.Add(' from tabcli');
    Query1.sql.Add(' where  codigo<>' + QuotedStr('99999')
        + ' and contato like:Inicio');
    Query1.params[0].AsString := fldContato.Text + '%';
    Query1.Open;
    dbGrid1.SetFocus;
  end;
End;

end.
