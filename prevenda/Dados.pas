unit Dados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,inifiles,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, ZAbstractConnection, ZConnection,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, ACBrBase, ACBrPosPrinter;

type
  TdmMod = class(TDataModule)
    dsClientes: TDataSource;
    dsVend: TDataSource;
    dsClit: TDataSource;
    dsForn: TDataSource;
    dsSetor: TDataSource;
    dsProd: TDataSource;
    dsCAixas: TDataSource;
    dsEmpresa: TDataSource;
    dsLab: TDataSource;
    dsParam: TDataSource;
    fdConPrinc: TFDConnection;
    tblProd: TFDTable;
    tblProdCODIGO: TWideStringField;
    tblProdCONTROLE: TIntegerField;
    tblProdCODIGOAUXLIAR: TWideStringField;
    tblProdCODIGOINTERNO: TWideStringField;
    tblProdPRODUTO: TWideStringField;
    tblProdLKSETOR: TIntegerField;
    tblProdFABRICANTE: TWideStringField;
    tblProdLKFORNEC: TWideStringField;
    tblProdPRECOCUSTO: TFloatField;
    tblProdCUSTOMEDIO: TFloatField;
    tblProdPRECOVENDA: TFloatField;
    tblProdESTMINIMO: TFloatField;
    tblProdQUANT: TFloatField;
    tblProdUNIDADE: TWideStringField;
    tblProdLUCRO: TFloatField;
    tblProdMOEDA: TWideStringField;
    tblProdULTREAJ: TDateField;
    tblProdFOTO: TBlobField;
    tblProdOBS: TWideMemoField;
    tblProdNAOSAITABELA: TWideStringField;
    tblProdINATIVO: TWideStringField;
    tblProdCODIGOIPI: TWideStringField;
    tblProdIPI: TFloatField;
    tblProdCTS: TWideStringField;
    tblProdICMS: TFloatField;
    tblProdBASECALCULO: TFloatField;
    tblProdDESCONTO: TFloatField;
    tblProdLOCAL: TWideStringField;
    tblProdPESO: TFloatField;
    tblProdPEDIDO: TFloatField;
    tblProdVENCIMENTO: TDateField;
    tblProdLKLAB: TIntegerField;
    tblProdESTFISCAL: TFloatField;
    tblProdSITUACAO: TWideStringField;
    tblProdETIQUETAS: TSmallintField;
    tblProdMARGEMREVENDA: TFloatField;
    tblProdPRECOREVENDA: TFloatField;
    tblProdENQFOTO: TWideStringField;
    tblProdPFISCALCUSTO: TFloatField;
    tblProdINVENTARIO: TFloatField;
    tblProdFRACAO: TWideStringField;
    tblProdMOVESTOQUE: TWideStringField;
    tblProdNCM: TWideStringField;
    tblProdCLASFISCAL: TWideStringField;
    tblProdIAT: TWideStringField;
    tblProdIPPT: TWideStringField;
    tblProdPROMOCAO: TWideStringField;
    tblProdNOTAFISCAL: TWideStringField;
    tblProdQUANTNOTAFISCAL: TFloatField;
    tblProdLKFORNNOTAFISCAL: TWideStringField;
    tblProdTRIBUTACAO: TWideStringField;
    tblProdCST: TWideStringField;
    tblProdCSOSN: TWideStringField;
    tblProdIPI_ALIQ: TFloatField;
    tblProdICMS_ALIQ: TFloatField;
    tblProdICMS_RED: TFloatField;
    tblProdPIS_ST: TWideStringField;
    tblProdICMS_SUB: TFloatField;
    tblProdPIS_BASE: TFloatField;
    tblProdPIS_ALIQ: TFloatField;
    tblProdPIS_SUB_BASE: TFloatField;
    tblProdCOFINS_ST: TWideStringField;
    tblProdCOFINS_BASE: TFloatField;
    tblProdCONFINS_ALIQ: TFloatField;
    tblProdCONFINS_SUB_BASE: TFloatField;
    tblProdCOFINS_SUB_ALIQ: TFloatField;
    tblProdPIS_SUB_ALIQ: TFloatField;
    tblProdUNID_COMPRA: TWideStringField;
    tblProdFATOR: TWideStringField;
    tblSetor: TFDTable;
    tblEmpresa: TFDTable;
    tblTipoRec: TFDTable;
    tblLab: TFDTable;
    tblInventario: TFDTable;
    tblClit: TFDTable;
    tblParam: TFDTable;
    tblForn: TFDTable;
    tblClientes: TFDTable;
    tblVend: TFDTable;
    tblSetorCONTROLE: TIntegerField;
    tblSetorSETOR: TWideStringField;
    tblSetorORDEM: TSmallintField;
    tblSetorLUCRO: TFloatField;
    tblSetorVENDA: TFloatField;
    tblSetorCUSTO: TFloatField;
    tblSetorSGF_MAXIMODESC: TFloatField;
    tblSetorSGF_COMISSAO: TFloatField;
    tblEmpresaRAZAOSOCIAL: TWideStringField;
    tblEmpresaFANTASIA: TWideStringField;
    tblEmpresaREFERECIA: TWideStringField;
    tblEmpresaENDERECO: TWideStringField;
    tblEmpresaCIDADE: TWideStringField;
    tblEmpresaESTADO: TWideStringField;
    tblEmpresaCEP: TWideStringField;
    tblEmpresaFONE1: TWideStringField;
    tblEmpresaFONE2: TWideStringField;
    tblEmpresaCGC: TWideStringField;
    tblEmpresaCGF: TWideStringField;
    tblEmpresaLOGO: TBlobField;
    tblEmpresaPASTA: TWideStringField;
    tblEmpresaCODUF: TWideStringField;
    tblEmpresaCODMUNICIPIO: TWideStringField;
    tblEmpresaNUMERO: TWideStringField;
    tblEmpresaCOMPLEMENTO: TWideStringField;
    tblEmpresaCNAE: TWideStringField;
    tblEmpresaINSCMUNICIPAL: TWideStringField;
    tblEmpresaINSCESTADUAL: TWideStringField;
    tblEmpresaBAIRRO: TWideStringField;
    tblEmpresaREGIMETRIB: TWideStringField;
    tblEmpresaEMAILPRINCIPAL: TWideStringField;
    tblEmpresaEMAILALTERNATIVO: TWideStringField;
    tblEmpresaCSTCSOSN: TWideStringField;
    tblEmpresaCFOP: TWideStringField;
    tblLabCONTROLE: TIntegerField;
    tblLabLABORATORIO: TWideStringField;
    tblClitCODTIPO: TIntegerField;
    tblClitTIPO: TWideStringField;
    tblTipoRecCONTROLE: TIntegerField;
    tblTipoRecRECEBIMENTO: TWideStringField;
    tblTipoRecFIXO: TWideStringField;
    tblInventarioDATA: TDateField;
    tblInventarioENCERRADO: TWideStringField;
    tblClientesCODIGO: TWideStringField;
    tblClientesCONTROLE: TIntegerField;
    tblClientesNOME: TWideStringField;
    tblClientesCOGNOME: TWideStringField;
    tblClientesENDERECO: TWideStringField;
    tblClientesBAIRRO: TWideStringField;
    tblClientesCIDADE: TWideStringField;
    tblClientesESTADO: TWideStringField;
    tblClientesCEP: TWideStringField;
    tblClientesTELEFONE: TWideStringField;
    tblClientesDATA: TDateField;
    tblClientesLKTIPO: TIntegerField;
    tblClientesLKVEND: TIntegerField;
    tblClientesOBS: TMemoField;
    tblClientesEMAIL: TWideStringField;
    tblClientesNUMCARTAO: TWideStringField;
    tblClientesVALIDADE: TWideStringField;
    tblClientesNOMEIMP: TWideStringField;
    tblClientesLKCARTAO: TIntegerField;
    tblClientesCNPJ: TWideStringField;
    tblClientesRENDA: TFloatField;
    tblClientesPERCENTUALRENDA: TFloatField;
    tblClientesLIMITECRED: TFloatField;
    tblClientesCONTATO: TWideStringField;
    tblClientesINSC: TWideStringField;
    tblClientesATIVIDADE: TWideStringField;
    tblClientesFAX: TWideStringField;
    tblClientesTAGFISICA: TWideStringField;
    tblClientesREFCOM: TWideStringField;
    tblClientesRG: TWideStringField;
    tblClientesCPF: TWideStringField;
    tblClientesDATANASC: TDateField;
    tblClientesFILIACAO: TWideStringField;
    tblClientesPROFISSAO: TWideStringField;
    tblClientesFOTO: TBlobField;
    tblClientesABREVIA: TWideStringField;
    tblClientesLKCIDADE: TIntegerField;
    tblClientesLKSETOR: TIntegerField;
    tblClientesLKROTA: TIntegerField;
    tblClientesENQFOTO: TWideStringField;
    tblClientesETIQUETA: TWideStringField;
    tblClientesULTIMACOMPRA: TDateField;
    tblClientesVALOR: TFloatField;
    tblClientesNUMERO: TWideStringField;
    tblClientesCOMPLEMENTO: TWideStringField;
    tblClientesCODUF: TWideStringField;
    tblClientesCODMUNICIPIO: TWideStringField;
    tblClientesINSCSUFRAMA: TWideStringField;
    tblClientesTIPOVENDA: TIntegerField;
    tblClientesTIPOCONTRIBUINTE: TWideStringField;
    tblVendCODVEND: TIntegerField;
    tblVendNOME: TWideStringField;
    tblVendCOGNOME: TWideStringField;
    tblVendCOMISSAO: TFloatField;
    tblVendSENHA: TWideStringField;
    tblFornCODIGO: TWideStringField;
    tblFornCONTROLE: TIntegerField;
    tblFornEMPRESA: TWideStringField;
    tblFornCONTATO: TWideStringField;
    tblFornENDERECO: TWideStringField;
    tblFornBAIRRO: TWideStringField;
    tblFornCIDADE: TWideStringField;
    tblFornESTADO: TWideStringField;
    tblFornCEP: TWideStringField;
    tblFornTELEFONE: TWideStringField;
    tblFornFAX: TWideStringField;
    tblFornREFBAN: TWideStringField;
    tblFornCNPJ: TWideStringField;
    tblFornINSC: TWideStringField;
    tblFornDATA: TDateField;
    tblFornOBS: TWideMemoField;
    tblFornEMAIL: TWideStringField;
    tbResumo: TFDTable;
    tblParamTAXAJUROS: TFloatField;
    tblParamCOMISSAO: TFloatField;
    tblParamDESCONTO: TFloatField;
    tblParamPRAZO: TSmallintField;
    tblParamLIIMITECREDITO: TFloatField;
    tblParamFENTRADA: TWideStringField;
    tblParamFSAIDA: TWideStringField;
    tblParamFAVISO: TWideStringField;
    tblParamFANIV: TWideStringField;
    tblParamFIMPORESTOQUE: TWideStringField;
    tblParamFESTNEGATIVO: TWideStringField;
    tblParamFAVISOBAC: TWideStringField;
    tblParamSENHA: TWideStringField;
    tblParamATUALIZAPDV: TWideStringField;
    tblParamVERSAO: TWideStringField;
    tblParamIMPBOLETO: TWideStringField;
    tblParamNFINICIAL: TWideStringField;
    tblParamDIASUTEIS: TSmallintField;
    tblParamAVANCOLINHA: TSmallintField;
    tblParamSEQUENCIAL: TSmallintField;
    tblParamOUTROS: TWideStringField;
    tblParamCONT: TSmallintField;
    tblParamDATAREF: TDateField;
    tblParamBLOQUEIOCLIENTE: TSmallintField;
    tblParamSALDOCAIXA: TFloatField;
    tblParamBAIXAESTFISCAL: TWideStringField;
    tblParamBAIXAESTGERAL: TWideStringField;
    tblParamINTEGRACAO: TWideStringField;
    tblParamIPSERVIDOR: TWideStringField;
    tblParamTIMER: TWideStringField;
    tblCaixas: TFDTable;
    tblAliquotas: TFDTable;
    tblCaixasCONTROLE: TIntegerField;
    tblCaixasDESCRICAO: TWideStringField;
    tblCaixasLKOPERADOR: TIntegerField;
    tblCaixasSALDO: TFloatField;
    tblAliquotasCTS: TWideStringField;
    tblAliquotasTRIBUTACAO: TWideStringField;
    tblAliquotasVALOR: TFloatField;
    tbResumoCONTROLE: TIntegerField;
    tbResumoDATA: TDateField;
    tbResumoNRESUMO: TWideStringField;
    tbResumoVALOR: TFloatField;
    tbResumoDATAPGTO: TDateField;
    tbResumoLKCARTAO: TSmallintField;
    tblMovCx: TFDTable;
    tblCodigo: TFDTable;
    tblMovCxCONTROLE: TIntegerField;
    tblMovCxDATA: TDateField;
    tblMovCxHISTORICO: TWideStringField;
    tblMovCxNUMDOC: TWideStringField;
    tblMovCxVALOR: TFloatField;
    tblMovCxOPERACAO: TWideStringField;
    tblMovCxLKCONTA: TIntegerField;
    tblMovCxLKCAIXA: TIntegerField;
    tblMovCxLKUSER: TIntegerField;
    tblMovCxLKEST3A: TIntegerField;
    tblCodigoCODIGO: TIntegerField;
    sqlEstoque: TFDQuery;
    sqlReceber: TFDQuery;
    sqlEstoqueDATA: TDateField;
    sqlEstoqueLKPROD: TWideStringField;
    sqlEstoqueESTOQUE: TFloatField;
    sqlEstoquePVENDA: TFloatField;
    sqlEstoquePCUSTO: TFloatField;
    sqlReceberDATACOMPRA: TDateField;
    sqlReceberLKVEND: TIntegerField;
    sqlReceberLKCLIENTE: TWideStringField;
    sqlReceberORDEM: TIntegerField;
    sqlReceberVENC: TDateField;
    sqlReceberJURO: TFloatField;
    sqlReceberVALOR: TFloatField;
    sqlReceberLKBANCO: TIntegerField;
    sqlReceberLKAGENCIA: TWideStringField;
    sqlReceberNUMERO: TWideStringField;
    sqlReceberCONTA: TWideStringField;
    sqlReceberTIPO: TWideStringField;
    sqlReceberDATAPAG: TDateField;
    sqlReceberVRPAGO: TFloatField;
    sqlReceberBAIXA: TWideStringField;
    sqlReceberSELECIONAR: TWideStringField;
    sqlReceberDEVOLVIDO: TWideStringField;
    sqlReceberHAVER: TFloatField;
    sqlReceberVALE: TWideStringField;
    sqlReceberLKCARTAO: TSmallintField;
    sqlReceberCOMPRAS: TFloatField;
    sqlReceberRESTANTE: TFloatField;
    sqlReceberESTORNO1: TFloatField;
    sqlReceberESTORNO2: TFloatField;
    sqlReceberPARCELA: TWideStringField;
    sqlReceberNOSSONUMERO: TIntegerField;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    ACBrPosPrinter1: TACBrPosPrinter;
    procedure DataModuleCreate(Sender: TObject);
    procedure tblFornBeforeInsert(DataSet: TDataSet);
    procedure tblProdFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure tblProdNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure LerIni;

  public
    { Public declarations }
     Codigo:String;
     Usuario:Char;
     lFiltro:Boolean;
     Function ProximoCod(Banco:TDataSet;Campo:String;Tamanho:ShortInt):String;
  end;

var
  dmMod: TdmMod;



 implementation
{$R *.DFM}


Uses Rotinas, dados1, IntDatas, dados2, ufrConfiguracao;


procedure TdmMod.LerIni;
var
  Ini: TIniFile;
begin
   try
   try
     Ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'prevenda.ini');
     dmMod.fdConPrinc.Connected := false;
     dmMod.fdConPrinc.Params. DriverID:='FB';
     dmMod.fdConPrinc.params.database:=Ini.ReadString('conexao', 'Database', 'c:\sge\bd\sgebd.fdb');
     dmMod.fdConPrinc.params.Add('Server=' +Ini.ReadString('conexao', 'Hostname', 'localhost'));
     dmMod.fdConPrinc.params.Add('port='+IntTostr( Ini.ReadInteger('conexao', 'Port', 3050)));
     dmMod.fdConPrinc.params.Add('user_name=SYSDBA');
     dmMod.fdConPrinc.params.Add('password=masterkey');

     impmodelo  := ini.ReadString('impressora','modelo','0');
     impname:=     ini.ReadString('impressora','porta','');
     CortarPApel:= ini.ReadBool('impressora','cortarpapel',true);
     AvancoLinha:=ini.ReadInteger('impressora','avancolinha',0);

     ScreenWidth:=ini.ReadInteger('resolucao','horizontal',1366);
     ScreenHeight:=ini.ReadInteger('resolucao','vertical',768);
   finally
      FreeAndNil(INI);
   end;
   Except
   on
        E:Exception do

          ShowMessage('Erro ao carregar par�metros de conex�o!'#13#10 + E.Message);

   end;
end;

Function TdmMod.ProximoCod(Banco:TDataSet;Campo:String;Tamanho:ShortInt):String;
Var
  Indice:String;
Begin
    Indice:=(Banco AS TFDTable).IndexFieldNames;
    (Banco As TFDTable).IndexFieldNames:='';
    Banco.Last;
    Result:=StrZero(Banco.FieldByName(campo).AsInteger+1,Tamanho);
   (Banco As TFDTable).IndexFieldNames:=Indice;
End;


procedure TdmMod.DataModuleCreate(Sender: TObject);

begin

  try
    dmMod.fdConPrinc.Connected:=false;
    lerIni;
    dmMod.fdConPrinc.Connected:=true;
  except
    on E: Exception do
    Begin
      MessageDlg('Erro ao conectar!'#13'Erro: ' + E.Message, mtError, [mbOK],  0);
      TRY
      Application.CreateForm(TFrmconfiguracao, FrmConfiguracao);

      if frmConfiguracao.ShowModal <> mrOK then
         Application.Terminate
      else
        lerIni;
      FINALLY
        FreeAndNil(frmConfiguracao);

      END;
    End;
  end;


end;

procedure TdmMod.tblFornBeforeInsert(DataSet: TDataSet);
begin
//   Codigo:=ProximoCod(Dataset,'Controle',4);
end;

procedure TdmMod.tblProdFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
Accept:=( (dataset.FieldByName('codigo').ASString <>'99998') and
          (dataset.FieldByName('codigo').ASString <>'99999') and
           (dataset.FieldByName('codigo').ASString <>'99997'));
end;

procedure TdmMod.tblProdNewRecord(DataSet: TDataSet);
begin
  tblProdFracao.Value:='N';
  tblProdmovEstoque.Value:='S';
  tblProdQuant.value:=0;
  tblProdEstfiscal.value:=0;
  tblProdIat.value:='A';
  tblProdIppt.value:='T';
  tblProdInativo.value:='N';
  tblProdNAOSAITABELA.value:='N';
end;

end.
