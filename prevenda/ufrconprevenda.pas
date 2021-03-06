unit ufrconprevenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Db,  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrconPrevenda = class(TForm)
    dtsConsulta: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    tbConsulta: TFDTable;
    tbConsultaNUMERO_PV: TIntegerField;
    tbConsultaDATA_EMISSAO: TDateField;
    tbConsultaHORA_EMISSAO: TTimeField;
    tbConsultaCPF_CNPJ: TWideStringField;
    tbConsultaCLIENTE: TWideStringField;
    tbConsultaENDERECO: TWideStringField;
    tbConsultaNUMERO: TWideStringField;
    tbConsultaCOMPLEMENTO: TWideStringField;
    tbConsultaTAXA_ACRESCIMO: TFloatField;
    tbConsultaACRESCIMO: TFloatField;
    tbConsultaTAXA_DESCONTO: TFloatField;
    tbConsultaDESCONTO: TFloatField;
    tbConsultaSUBTOTAL: TFloatField;
    tbConsultaVALOR: TFloatField;
    tbConsultaLKCLIENTE: TWideStringField;
    tbConsultaSITUACAO: TWideStringField;
    tbConsultaCODVENDEDOR: TIntegerField;
    tbConsultaFINALIZADO: TWideStringField;
    tbConsultaCANCELADO: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    Permissao:boolean;
  public
    { Public declarations }
  end;

var
  frconPrevenda: TfrconPrevenda;

implementation
uses rotinas, acesso, Dados;
{$R *.dfm}

procedure TfrconPrevenda.FormShow(Sender: TObject);
begin
    tbConsulta.open;
    permissao:=false;
end;

procedure TfrconPrevenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tbConsulta.close;
end;

procedure TfrconPrevenda.Button2Click(Sender: TObject);
begin
   if usuario.Nivel<>'2' Then
   begin
      mensagem('Nivel de usu�rio n�o permitido');
      exit;
   End;
   If not permissao Then
   begin
     FormAcesso.ShowModal;
     Permissao:=FormAcesso.Retorno;
   End;
   if Permissao Then
      If Confirma(Pchar('confirma cancelamento pre-venda n� '+tbConsultaNumero_pv.AsString))=idYes Then
      begin
         tbConsulta.Edit;
         tbConsultaCancelado.value:='S';
         tbConsultaFinalizado.value:='S';
         tbConsulta.post;
      end;

end;

end.
