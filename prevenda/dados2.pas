unit dados2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmMod2 = class(TDataModule)
    tbCodigo: TFDTable;
    tbmPag: TFDTable;
    tbCodigoPRODUTO: TIntegerField;
    tbCodigoCLIENTE: TIntegerField;
    tbCodigoFORNECEDOR: TIntegerField;
    tbCodigoVENDEDOR: TIntegerField;
    tbCodigoGRUPO: TIntegerField;
    tbCodigoFABRICANTE: TIntegerField;
    tbCodigoPAGAR: TIntegerField;
    tbCodigoCAMPO1: TIntegerField;
    tbCodigoCAMPO2: TIntegerField;
    tbCodigoCAMPO3: TIntegerField;
    tbCodigoDAV: TIntegerField;
    tbCodigoPREVENDA: TIntegerField;
    tbCodigoPRODCODIGOINTERNO: TIntegerField;
    tbmPagDESCRICAO: TWideStringField;
    tbmPagSEQ: TWideStringField;
    tbmPagECF: TWideStringField;
    tbmPagSGE: TWideStringField;
    tbmPagIDCAIXA: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure tbCodigoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMod2: TdmMod2;

implementation

uses Dados;

{$R *.DFM}

procedure TdmMod2.DataModuleCreate(Sender: TObject);
begin
     tbCodigo.open;
end;

procedure TdmMod2.tbCodigoAfterPost(DataSet: TDataSet);
begin

 tbCodigo.Refresh;

end;

end.
