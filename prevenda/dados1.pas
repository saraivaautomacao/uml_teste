unit dados1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TdmMod1 = class(TDataModule)
    dsFinan: TDataSource;
    dsEmp: TDataSource;
    dsFiscal: TDataSource;
    dsImp: TDataSource;
    dsMatricial: TDataSource;
    tblFinan: TFDTable;
    tblEmp: TFDTable;
    tblMatricial: TFDTable;
    tblImp: TFDTable;
    tblFinanCODVEND: TSmallintField;
    tblFinanDATAABERTURA: TDateField;
    tblFinanHORAABERTURA: TTimeField;
    tblFinanVALORABERTURA: TFloatField;
    tblFinanDATAFECHA: TDateField;
    tblFinanHORAFECHA: TTimeField;
    tblFinanDINHEIRO: TFloatField;
    tblFinanCHEQUE: TFloatField;
    tblFinanVALE: TFloatField;
    tblFinanCARTAO: TFloatField;
    tblFinanPROMISSORIA: TFloatField;
    tblFinanPREDATADO: TFloatField;
    tblFinanESTORNO: TFloatField;
    tblFinanSANGRIA: TFloatField;
    tblFinanREFORCO: TFloatField;
    tblFinanFECHA: TWideStringField;
    tblFinanPAGAS: TFloatField;
    tblFinanAVISTA: TFloatField;
    tblFinanRECEBIMENTO: TFloatField;
    tblEmpRAZAOSOCIAL: TWideStringField;
    tblEmpFANTASIA: TWideStringField;
    tblEmpREFERECIA: TWideStringField;
    tblEmpENDERECO: TWideStringField;
    tblEmpCIDADE: TWideStringField;
    tblEmpESTADO: TWideStringField;
    tblEmpCEP: TWideStringField;
    tblEmpFONE1: TWideStringField;
    tblEmpFONE2: TWideStringField;
    tblEmpCGC: TWideStringField;
    tblEmpCGF: TWideStringField;
    tblEmpLOGO: TBlobField;
    tblEmpPASTA: TWideStringField;
    tblEmpCODUF: TWideStringField;
    tblEmpCODMUNICIPIO: TWideStringField;
    tblEmpNUMERO: TWideStringField;
    tblEmpCOMPLEMENTO: TWideStringField;
    tblEmpCNAE: TWideStringField;
    tblEmpINSCMUNICIPAL: TWideStringField;
    tblEmpINSCESTADUAL: TWideStringField;
    tblEmpBAIRRO: TWideStringField;
    tblEmpREGIMETRIB: TWideStringField;
    tblEmpEMAILPRINCIPAL: TWideStringField;
    tblEmpEMAILALTERNATIVO: TWideStringField;
    tblEmpCSTCSOSN: TWideStringField;
    tblEmpCFOP: TWideStringField;
    tblMatricialESTACAO: TWideStringField;
    tblMatricialCOMPARTILHA: TWideStringField;
    tblMatricialTIPO: TWideStringField;
    tblMatricialPATH: TWideStringField;
    tblMatricialMARCA: TWideStringField;
    tblMatricialPATHCARGA: TWideStringField;
    tblMatricialID: TIntegerField;
    tblMatricialIPCAIXA: TWideStringField;
    tblMatricialIMPRESSORAMODELO: TWideStringField;
    tblImpMODELO: TWideStringField;
    tblImpPORTA: TWideStringField;
    tblImpMENSAGEM: TWideStringField;
    tblImpDESABILTAR: TWideStringField;
    tblImpMENSAGEM1: TWideStringField;
    tblImpMENSAGEM2: TWideStringField;
    tblImpTAXATRS: TWideStringField;
    tbFiscal: TFDTable;
    tbFiscalCTS: TWideStringField;
    tbFiscalTRIBUTACAO: TWideStringField;
    tbFiscalVALOR: TFloatField;
    procedure tblMatricialMarcaSetText(Sender: TField; const Text: String);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMod1: TdmMod1;

implementation

uses Dados;

{$R *.DFM}

procedure TdmMod1.tblMatricialMarcaSetText(Sender: TField;
  const Text: String);
begin
    //tEXTdmMod1.tblImpMatricialEstacao.Value;

end;

procedure TdmMod1.DataModuleCreate(Sender: TObject);
begin
   tblFinan.open;
end;

end.
