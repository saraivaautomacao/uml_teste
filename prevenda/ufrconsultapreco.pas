unit ufrconsultapreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Db,    Grids, DBGrids, StdCtrls, ExtCtrls,
  ACBrBase, ACBrEnterTab,  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrConsultaPreco = class(TForm)
    Panel1: TPanel;
    edBusca: TEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    dtsBusca: TDataSource;
    ACBrEnterTab1: TACBrEnterTab;
    Panel3: TPanel;
    qryBusca: TFDQuery;
    qryBuscaCODIGO: TWideStringField;
    qryBuscaPRODUTO: TWideStringField;
    qryBuscaPRECOVENDA: TFloatField;
    qryBuscaQUANT: TFloatField;
    qryBuscaUNIDADE: TWideStringField;
    qryBuscaCODIGOAUXLIAR: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure edBuscaExit(Sender: TObject);
    procedure dtsBuscaDataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryBuscaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConsultaPreco: TfrConsultaPreco;

implementation
uses rotinas, Dados;
{$R *.dfm}

procedure TfrConsultaPreco.FormShow(Sender: TObject);
begin
  panel3.caption:='';
  edBusca.clear;
  edBusca.setfocus;
end;

procedure TfrConsultaPreco.qryBuscaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  accept:=( (dataset.fieldbyname('codigo').asString<>'99997') and
            (dataset.fieldbyname('codigo').asString<>'99998') and
            (dataset.fieldbyname('codigo').asString<>'99999') );



end;

procedure TfrConsultaPreco.edBuscaExit(Sender: TObject);
var
  sql:string;
begin
    if trim(edbusca.text)<>'' Then
    begin
      qryBusca.close;
      qryBusca.sql.clear;
      qryBusca.sql.Add('select codigo,codigoauxliar,produto,precovenda,quant,unidade from tabest1');
      IF tipoString(edBusca.Text) Then //codigo
      begin
         edBusca.Text:=geraCod(edBusca.text,5);
         sql:=' where codigo='+quotedstr(edBusca.Text) + ' or codigoauxliar='+quotedstr(edBusca.Text);
      end
      else
         sql:=' where produto like '+QuotedStr(edBusca.Text+'%');
      qryBusca.SQL.Add(sql);
      qryBusca.Open;
      dbGrid1.SetFocus;

    end;

end;

procedure TfrConsultaPreco.dtsBuscaDataChange(Sender: TObject;
  Field: TField);
begin
    Panel3.Caption:=qryBuscaProduto.value+' - '+FloatToStrf(qryBuscaPrecoVenda.value,
    ffcurrency,12,2);
end;

procedure TfrConsultaPreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 Then
    close;
end;

procedure TfrConsultaPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 qrybusca.close;
end;

end.
