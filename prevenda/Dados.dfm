object dmMod: TdmMod
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 503
  Width = 479
  object dsClientes: TDataSource
    DataSet = tblClientes
    Left = 104
    Top = 432
  end
  object dsVend: TDataSource
    DataSet = tblVend
    Left = 160
    Top = 424
  end
  object dsClit: TDataSource
    DataSet = tblClit
    Left = 32
    Top = 432
  end
  object dsForn: TDataSource
    DataSet = tblForn
    Left = 280
    Top = 360
  end
  object dsSetor: TDataSource
    DataSet = tblSetor
    Left = 104
    Top = 360
  end
  object dsProd: TDataSource
    DataSet = tblProd
    Left = 40
    Top = 368
  end
  object dsCAixas: TDataSource
    DataSet = tblCaixas
    Left = 232
    Top = 424
  end
  object dsEmpresa: TDataSource
    DataSet = tblEmpresa
    Left = 168
    Top = 360
  end
  object dsLab: TDataSource
    DataSet = tblLab
    Left = 224
    Top = 360
  end
  object dsParam: TDataSource
    DataSet = tblParam
    Left = 296
    Top = 432
  end
  object fdConPrinc: TFDConnection
    Params.Strings = (
      'Database=C:\sge\b1d\SGEBD.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtAnsiString
        TargetDataType = dtWideString
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtSingle
        TargetDataType = dtDouble
      end>
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object tblProd: TFDTable
    OnNewRecord = tblProdNewRecord
    OnFilterRecord = tblProdFilterRecord
    IndexFieldNames = 'CODIGO'
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'TABEST1'
    TableName = 'TABEST1'
    Left = 40
    Top = 80
    object tblProdCODIGO: TWideStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object tblProdCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object tblProdCODIGOAUXLIAR: TWideStringField
      FieldName = 'CODIGOAUXLIAR'
      Size = 15
    end
    object tblProdCODIGOINTERNO: TWideStringField
      FieldName = 'CODIGOINTERNO'
      Size = 1
    end
    object tblProdPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object tblProdLKSETOR: TIntegerField
      FieldName = 'LKSETOR'
    end
    object tblProdFABRICANTE: TWideStringField
      FieldName = 'FABRICANTE'
    end
    object tblProdLKFORNEC: TWideStringField
      FieldName = 'LKFORNEC'
      Size = 8
    end
    object tblProdPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      currency = True
    end
    object tblProdCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      currency = True
    end
    object tblProdPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      currency = True
    end
    object tblProdESTMINIMO: TFloatField
      FieldName = 'ESTMINIMO'
    end
    object tblProdQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object tblProdUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object tblProdLUCRO: TFloatField
      FieldName = 'LUCRO'
      DisplayFormat = '##0.00'
    end
    object tblProdMOEDA: TWideStringField
      FieldName = 'MOEDA'
      Size = 5
    end
    object tblProdULTREAJ: TDateField
      FieldName = 'ULTREAJ'
    end
    object tblProdFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object tblProdOBS: TWideMemoField
      FieldName = 'OBS'
      BlobType = ftWideMemo
    end
    object tblProdNAOSAITABELA: TWideStringField
      FieldName = 'NAOSAITABELA'
      Size = 1
    end
    object tblProdINATIVO: TWideStringField
      FieldName = 'INATIVO'
      Size = 1
    end
    object tblProdCODIGOIPI: TWideStringField
      FieldName = 'CODIGOIPI'
      Size = 12
    end
    object tblProdIPI: TFloatField
      FieldName = 'IPI'
    end
    object tblProdCTS: TWideStringField
      FieldName = 'CTS'
      Size = 2
    end
    object tblProdICMS: TFloatField
      FieldName = 'ICMS'
    end
    object tblProdBASECALCULO: TFloatField
      FieldName = 'BASECALCULO'
    end
    object tblProdDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object tblProdLOCAL: TWideStringField
      FieldName = 'LOCAL'
      Size = 14
    end
    object tblProdPESO: TFloatField
      FieldName = 'PESO'
    end
    object tblProdPEDIDO: TFloatField
      FieldName = 'PEDIDO'
    end
    object tblProdVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object tblProdLKLAB: TIntegerField
      FieldName = 'LKLAB'
    end
    object tblProdESTFISCAL: TFloatField
      FieldName = 'ESTFISCAL'
    end
    object tblProdSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object tblProdETIQUETAS: TSmallintField
      FieldName = 'ETIQUETAS'
    end
    object tblProdMARGEMREVENDA: TFloatField
      FieldName = 'MARGEMREVENDA'
      DisplayFormat = '##0.00'
    end
    object tblProdPRECOREVENDA: TFloatField
      FieldName = 'PRECOREVENDA'
      currency = True
    end
    object tblProdENQFOTO: TWideStringField
      FieldName = 'ENQFOTO'
      Size = 1
    end
    object tblProdPFISCALCUSTO: TFloatField
      FieldName = 'PFISCALCUSTO'
      currency = True
    end
    object tblProdINVENTARIO: TFloatField
      FieldName = 'INVENTARIO'
    end
    object tblProdFRACAO: TWideStringField
      FieldName = 'FRACAO'
      Size = 1
    end
    object tblProdMOVESTOQUE: TWideStringField
      FieldName = 'MOVESTOQUE'
      Size = 1
    end
    object tblProdNCM: TWideStringField
      FieldName = 'NCM'
      Size = 10
    end
    object tblProdCLASFISCAL: TWideStringField
      FieldName = 'CLASFISCAL'
      Size = 10
    end
    object tblProdIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object tblProdIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object tblProdPROMOCAO: TWideStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object tblProdNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 10
    end
    object tblProdQUANTNOTAFISCAL: TFloatField
      FieldName = 'QUANTNOTAFISCAL'
    end
    object tblProdLKFORNNOTAFISCAL: TWideStringField
      FieldName = 'LKFORNNOTAFISCAL'
      Size = 8
    end
    object tblProdTRIBUTACAO: TWideStringField
      FieldName = 'TRIBUTACAO'
      Size = 25
    end
    object tblProdCST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object tblProdCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object tblProdIPI_ALIQ: TFloatField
      FieldName = 'IPI_ALIQ'
    end
    object tblProdICMS_ALIQ: TFloatField
      FieldName = 'ICMS_ALIQ'
    end
    object tblProdICMS_RED: TFloatField
      FieldName = 'ICMS_RED'
    end
    object tblProdPIS_ST: TWideStringField
      FieldName = 'PIS_ST'
      Size = 2
    end
    object tblProdICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object tblProdPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
    end
    object tblProdPIS_ALIQ: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object tblProdPIS_SUB_BASE: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object tblProdCOFINS_ST: TWideStringField
      FieldName = 'COFINS_ST'
      Size = 2
    end
    object tblProdCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object tblProdCONFINS_ALIQ: TFloatField
      FieldName = 'CONFINS_ALIQ'
    end
    object tblProdCONFINS_SUB_BASE: TFloatField
      FieldName = 'CONFINS_SUB_BASE'
    end
    object tblProdCOFINS_SUB_ALIQ: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object tblProdPIS_SUB_ALIQ: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object tblProdUNID_COMPRA: TWideStringField
      FieldName = 'UNID_COMPRA'
      Size = 2
    end
    object tblProdFATOR: TWideStringField
      FieldName = 'FATOR'
      Size = 5
    end
  end
  object tblSetor: TFDTable
    IndexFieldNames = 'CONTROLE'
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'tabest8'
    TableName = 'tabest8'
    Left = 104
    Top = 80
    object tblSetorCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblSetorSETOR: TWideStringField
      FieldName = 'SETOR'
      Size = 30
    end
    object tblSetorORDEM: TSmallintField
      FieldName = 'ORDEM'
    end
    object tblSetorLUCRO: TFloatField
      FieldName = 'LUCRO'
    end
    object tblSetorVENDA: TFloatField
      FieldName = 'VENDA'
    end
    object tblSetorCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object tblSetorSGF_MAXIMODESC: TFloatField
      FieldName = 'SGF_MAXIMODESC'
    end
    object tblSetorSGF_COMISSAO: TFloatField
      FieldName = 'SGF_COMISSAO'
    end
  end
  object tblEmpresa: TFDTable
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'empresa'
    TableName = 'empresa'
    Left = 168
    Top = 88
    object tblEmpresaRAZAOSOCIAL: TWideStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object tblEmpresaFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 25
    end
    object tblEmpresaREFERECIA: TWideStringField
      FieldName = 'REFERECIA'
      Origin = 'REFERECIA'
      Size = 50
    end
    object tblEmpresaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 60
    end
    object tblEmpresaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 30
    end
    object tblEmpresaESTADO: TWideStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object tblEmpresaCEP: TWideStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object tblEmpresaFONE1: TWideStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 16
    end
    object tblEmpresaFONE2: TWideStringField
      FieldName = 'FONE2'
      Origin = 'FONE2'
      Size = 16
    end
    object tblEmpresaCGC: TWideStringField
      FieldName = 'CGC'
      Origin = 'CGC'
      Required = True
      Size = 18
    end
    object tblEmpresaCGF: TWideStringField
      FieldName = 'CGF'
      Origin = 'CGF'
      Size = 13
    end
    object tblEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object tblEmpresaPASTA: TWideStringField
      FieldName = 'PASTA'
      Origin = 'PASTA'
    end
    object tblEmpresaCODUF: TWideStringField
      FieldName = 'CODUF'
      Origin = 'CODUF'
      FixedChar = True
      Size = 2
    end
    object tblEmpresaCODMUNICIPIO: TWideStringField
      FieldName = 'CODMUNICIPIO'
      Origin = 'CODMUNICIPIO'
      Size = 5
    end
    object tblEmpresaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 5
    end
    object tblEmpresaCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
    end
    object tblEmpresaCNAE: TWideStringField
      FieldName = 'CNAE'
      Origin = 'CNAE'
      Size = 7
    end
    object tblEmpresaINSCMUNICIPAL: TWideStringField
      FieldName = 'INSCMUNICIPAL'
      Origin = 'INSCMUNICIPAL'
      Size = 15
    end
    object tblEmpresaINSCESTADUAL: TWideStringField
      FieldName = 'INSCESTADUAL'
      Origin = 'INSCESTADUAL'
      Size = 14
    end
    object tblEmpresaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object tblEmpresaREGIMETRIB: TWideStringField
      FieldName = 'REGIMETRIB'
      Origin = 'REGIMETRIB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tblEmpresaEMAILPRINCIPAL: TWideStringField
      FieldName = 'EMAILPRINCIPAL'
      Origin = 'EMAILPRINCIPAL'
      Size = 60
    end
    object tblEmpresaEMAILALTERNATIVO: TWideStringField
      FieldName = 'EMAILALTERNATIVO'
      Origin = 'EMAILALTERNATIVO'
      Size = 60
    end
    object tblEmpresaCSTCSOSN: TWideStringField
      FieldName = 'CSTCSOSN'
      Origin = 'CSTCSOSN'
      Size = 4
    end
    object tblEmpresaCFOP: TWideStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
  end
  object tblTipoRec: TFDTable
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'TabEst7'
    TableName = 'TabEst7'
    Left = 360
    Top = 72
    object tblTipoRecCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object tblTipoRecRECEBIMENTO: TWideStringField
      FieldName = 'RECEBIMENTO'
      Size = 40
    end
    object tblTipoRecFIXO: TWideStringField
      FieldName = 'FIXO'
      Size = 1
    end
  end
  object tblLab: TFDTable
    IndexFieldNames = 'CONTROLE'
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'tablab'
    TableName = 'tablab'
    Left = 232
    Top = 80
    object tblLabCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblLabLABORATORIO: TWideStringField
      FieldName = 'LABORATORIO'
      Origin = 'LABORATORIO'
      Size = 30
    end
  end
  object tblInventario: TFDTable
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'INVENTARIO'
    TableName = 'INVENTARIO'
    Left = 40
    Top = 144
    object tblInventarioDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object tblInventarioENCERRADO: TWideStringField
      FieldName = 'ENCERRADO'
      Origin = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
  end
  object tblClit: TFDTable
    IndexFieldNames = 'CODTIPO'
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'TABCLIT'
    TableName = 'TABCLIT'
    Left = 288
    Top = 24
    object tblClitCODTIPO: TIntegerField
      FieldName = 'CODTIPO'
      Origin = 'CODTIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblClitTIPO: TWideStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 40
    end
  end
  object tblParam: TFDTable
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'TABPARAM'
    TableName = 'TABPARAM'
    Left = 304
    Top = 128
    object tblParamTAXAJUROS: TFloatField
      FieldName = 'TAXAJUROS'
      Origin = 'TAXAJUROS'
    end
    object tblParamCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object tblParamDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object tblParamPRAZO: TSmallintField
      FieldName = 'PRAZO'
      Origin = 'PRAZO'
    end
    object tblParamLIIMITECREDITO: TFloatField
      FieldName = 'LIIMITECREDITO'
      Origin = 'LIIMITECREDITO'
    end
    object tblParamFENTRADA: TWideStringField
      FieldName = 'FENTRADA'
      Origin = 'FENTRADA'
      FixedChar = True
      Size = 1
    end
    object tblParamFSAIDA: TWideStringField
      FieldName = 'FSAIDA'
      Origin = 'FSAIDA'
      FixedChar = True
      Size = 1
    end
    object tblParamFAVISO: TWideStringField
      FieldName = 'FAVISO'
      Origin = 'FAVISO'
      FixedChar = True
      Size = 1
    end
    object tblParamFANIV: TWideStringField
      FieldName = 'FANIV'
      Origin = 'FANIV'
      FixedChar = True
      Size = 1
    end
    object tblParamFIMPORESTOQUE: TWideStringField
      FieldName = 'FIMPORESTOQUE'
      Origin = 'FIMPORESTOQUE'
      FixedChar = True
      Size = 1
    end
    object tblParamFESTNEGATIVO: TWideStringField
      FieldName = 'FESTNEGATIVO'
      Origin = 'FESTNEGATIVO'
      FixedChar = True
      Size = 1
    end
    object tblParamFAVISOBAC: TWideStringField
      FieldName = 'FAVISOBAC'
      Origin = 'FAVISOBAC'
      FixedChar = True
      Size = 1
    end
    object tblParamSENHA: TWideStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 15
    end
    object tblParamATUALIZAPDV: TWideStringField
      FieldName = 'ATUALIZAPDV'
      Origin = 'ATUALIZAPDV'
      FixedChar = True
      Size = 1
    end
    object tblParamVERSAO: TWideStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
    end
    object tblParamIMPBOLETO: TWideStringField
      FieldName = 'IMPBOLETO'
      Origin = 'IMPBOLETO'
      FixedChar = True
      Size = 1
    end
    object tblParamNFINICIAL: TWideStringField
      FieldName = 'NFINICIAL'
      Origin = 'NFINICIAL'
      FixedChar = True
      Size = 4
    end
    object tblParamDIASUTEIS: TSmallintField
      FieldName = 'DIASUTEIS'
      Origin = 'DIASUTEIS'
    end
    object tblParamAVANCOLINHA: TSmallintField
      FieldName = 'AVANCOLINHA'
      Origin = 'AVANCOLINHA'
    end
    object tblParamSEQUENCIAL: TSmallintField
      FieldName = 'SEQUENCIAL'
      Origin = 'SEQUENCIAL'
    end
    object tblParamOUTROS: TWideStringField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      Size = 10
    end
    object tblParamCONT: TSmallintField
      FieldName = 'CONT'
      Origin = 'CONT'
    end
    object tblParamDATAREF: TDateField
      FieldName = 'DATAREF'
      Origin = 'DATAREF'
    end
    object tblParamBLOQUEIOCLIENTE: TSmallintField
      FieldName = 'BLOQUEIOCLIENTE'
      Origin = 'BLOQUEIOCLIENTE'
    end
    object tblParamSALDOCAIXA: TFloatField
      FieldName = 'SALDOCAIXA'
      Origin = 'SALDOCAIXA'
    end
    object tblParamBAIXAESTFISCAL: TWideStringField
      FieldName = 'BAIXAESTFISCAL'
      Origin = 'BAIXAESTFISCAL'
      FixedChar = True
      Size = 1
    end
    object tblParamBAIXAESTGERAL: TWideStringField
      FieldName = 'BAIXAESTGERAL'
      Origin = 'BAIXAESTGERAL'
      FixedChar = True
      Size = 1
    end
    object tblParamINTEGRACAO: TWideStringField
      FieldName = 'INTEGRACAO'
      Origin = 'INTEGRACAO'
      FixedChar = True
      Size = 1
    end
    object tblParamIPSERVIDOR: TWideStringField
      FieldName = 'IPSERVIDOR'
      Origin = 'IPSERVIDOR'
    end
    object tblParamTIMER: TWideStringField
      FieldName = 'TIMER'
      Origin = 'TIMER'
      Size = 6
    end
  end
  object tblForn: TFDTable
    IndexFieldNames = 'CODIGO'
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'TABFORN'
    TableName = 'TABFORN'
    Left = 240
    Top = 144
    object tblFornCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object tblFornCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object tblFornEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object tblFornCONTATO: TWideStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object tblFornENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object tblFornBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
    end
    object tblFornCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object tblFornESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object tblFornCEP: TWideStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object tblFornTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 30
    end
    object tblFornFAX: TWideStringField
      FieldName = 'FAX'
    end
    object tblFornREFBAN: TWideStringField
      FieldName = 'REFBAN'
      Size = 30
    end
    object tblFornCNPJ: TWideStringField
      FieldName = 'CNPJ'
      EditMask = '!99.999.999/9999-99;1;_'
      Size = 18
    end
    object tblFornINSC: TWideStringField
      FieldName = 'INSC'
    end
    object tblFornDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object tblFornOBS: TWideMemoField
      FieldName = 'OBS'
      BlobType = ftWideMemo
    end
    object tblFornEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 40
    end
  end
  object tblClientes: TFDTable
    IndexFieldNames = 'CODIGO'
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'tabcli'
    TableName = 'tabcli'
    Left = 112
    Top = 144
    object tblClientesCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object tblClientesCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = 'CONTROLE'
    end
    object tblClientesNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object tblClientesCOGNOME: TWideStringField
      FieldName = 'COGNOME'
      Origin = 'COGNOME'
    end
    object tblClientesENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object tblClientesBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object tblClientesCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 30
    end
    object tblClientesESTADO: TWideStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object tblClientesCEP: TWideStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object tblClientesTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 30
    end
    object tblClientesDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object tblClientesLKTIPO: TIntegerField
      FieldName = 'LKTIPO'
      Origin = 'LKTIPO'
    end
    object tblClientesLKVEND: TIntegerField
      FieldName = 'LKVEND'
      Origin = 'LKVEND'
    end
    object tblClientesOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object tblClientesEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 40
    end
    object tblClientesNUMCARTAO: TWideStringField
      FieldName = 'NUMCARTAO'
      Origin = 'NUMCARTAO'
      Size = 17
    end
    object tblClientesVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
      Size = 7
    end
    object tblClientesNOMEIMP: TWideStringField
      FieldName = 'NOMEIMP'
      Origin = 'NOMEIMP'
      Size = 40
    end
    object tblClientesLKCARTAO: TIntegerField
      FieldName = 'LKCARTAO'
      Origin = 'LKCARTAO'
    end
    object tblClientesCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object tblClientesRENDA: TFloatField
      FieldName = 'RENDA'
      Origin = 'RENDA'
    end
    object tblClientesPERCENTUALRENDA: TFloatField
      FieldName = 'PERCENTUALRENDA'
      Origin = 'PERCENTUALRENDA'
    end
    object tblClientesLIMITECRED: TFloatField
      FieldName = 'LIMITECRED'
      Origin = 'LIMITECRED'
    end
    object tblClientesCONTATO: TWideStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 40
    end
    object tblClientesINSC: TWideStringField
      FieldName = 'INSC'
      Origin = 'INSC'
    end
    object tblClientesATIVIDADE: TWideStringField
      FieldName = 'ATIVIDADE'
      Origin = 'ATIVIDADE'
      Size = 40
    end
    object tblClientesFAX: TWideStringField
      FieldName = 'FAX'
      Origin = 'FAX'
    end
    object tblClientesTAGFISICA: TWideStringField
      FieldName = 'TAGFISICA'
      Origin = 'TAGFISICA'
      FixedChar = True
      Size = 1
    end
    object tblClientesREFCOM: TWideStringField
      FieldName = 'REFCOM'
      Origin = 'REFCOM'
      Size = 30
    end
    object tblClientesRG: TWideStringField
      FieldName = 'RG'
      Origin = 'RG'
    end
    object tblClientesCPF: TWideStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 14
    end
    object tblClientesDATANASC: TDateField
      FieldName = 'DATANASC'
      Origin = 'DATANASC'
    end
    object tblClientesFILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Origin = 'FILIACAO'
      Size = 60
    end
    object tblClientesPROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      Size = 30
    end
    object tblClientesFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object tblClientesABREVIA: TWideStringField
      FieldName = 'ABREVIA'
      Origin = 'ABREVIA'
      Size = 10
    end
    object tblClientesLKCIDADE: TIntegerField
      FieldName = 'LKCIDADE'
      Origin = 'LKCIDADE'
    end
    object tblClientesLKSETOR: TIntegerField
      FieldName = 'LKSETOR'
      Origin = 'LKSETOR'
    end
    object tblClientesLKROTA: TIntegerField
      FieldName = 'LKROTA'
      Origin = 'LKROTA'
    end
    object tblClientesENQFOTO: TWideStringField
      FieldName = 'ENQFOTO'
      Origin = 'ENQFOTO'
      FixedChar = True
      Size = 1
    end
    object tblClientesETIQUETA: TWideStringField
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object tblClientesULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ULTIMACOMPRA'
    end
    object tblClientesVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object tblClientesNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 5
    end
    object tblClientesCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
    end
    object tblClientesCODUF: TWideStringField
      FieldName = 'CODUF'
      Origin = 'CODUF'
      FixedChar = True
      Size = 2
    end
    object tblClientesCODMUNICIPIO: TWideStringField
      FieldName = 'CODMUNICIPIO'
      Origin = 'CODMUNICIPIO'
      Size = 5
    end
    object tblClientesINSCSUFRAMA: TWideStringField
      FieldName = 'INSCSUFRAMA'
      Origin = 'INSCSUFRAMA'
      Size = 9
    end
    object tblClientesTIPOVENDA: TIntegerField
      FieldName = 'TIPOVENDA'
      Origin = 'TIPOVENDA'
    end
    object tblClientesTIPOCONTRIBUINTE: TWideStringField
      FieldName = 'TIPOCONTRIBUINTE'
      Origin = 'TIPOCONTRIBUINTE'
      FixedChar = True
      Size = 1
    end
  end
  object tblVend: TFDTable
    IndexFieldNames = 'CODVEND'
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'TABVEND'
    TableName = 'TABVEND'
    Left = 176
    Top = 144
    object tblVendCODVEND: TIntegerField
      FieldName = 'CODVEND'
      Origin = 'CODVEND'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblVendNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 45
    end
    object tblVendCOGNOME: TWideStringField
      FieldName = 'COGNOME'
      Origin = 'COGNOME'
    end
    object tblVendCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object tblVendSENHA: TWideStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 10
    end
  end
  object tbResumo: TFDTable
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'tabresumo'
    TableName = 'tabresumo'
    Left = 200
    Top = 216
    object tbResumoCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object tbResumoDATA: TDateField
      FieldName = 'DATA'
    end
    object tbResumoNRESUMO: TWideStringField
      FieldName = 'NRESUMO'
      Size = 10
    end
    object tbResumoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object tbResumoDATAPGTO: TDateField
      FieldName = 'DATAPGTO'
    end
    object tbResumoLKCARTAO: TSmallintField
      FieldName = 'LKCARTAO'
    end
  end
  object tblCaixas: TFDTable
    IndexFieldNames = 'CONTROLE'
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'TabCx3'
    TableName = 'TabCx3'
    Left = 40
    Top = 216
    object tblCaixasCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblCaixasDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object tblCaixasLKOPERADOR: TIntegerField
      FieldName = 'LKOPERADOR'
      Origin = 'LKOPERADOR'
    end
    object tblCaixasSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
  end
  object tblAliquotas: TFDTable
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'tabfiscal'
    TableName = 'tabfiscal'
    Left = 128
    Top = 216
    object tblAliquotasCTS: TWideStringField
      FieldName = 'CTS'
      Origin = 'CTS'
      FixedChar = True
      Size = 2
    end
    object tblAliquotasTRIBUTACAO: TWideStringField
      FieldName = 'TRIBUTACAO'
      Origin = 'TRIBUTACAO'
      Size = 15
    end
    object tblAliquotasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
  end
  object tblMovCx: TFDTable
    IndexFieldNames = 'CONTROLE'
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'TABCX1'
    TableName = 'TABCX1'
    Left = 344
    Top = 296
    object tblMovCxCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblMovCxDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object tblMovCxHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 40
    end
    object tblMovCxNUMDOC: TWideStringField
      FieldName = 'NUMDOC'
      Origin = 'NUMDOC'
      Size = 10
    end
    object tblMovCxVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object tblMovCxOPERACAO: TWideStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      FixedChar = True
      Size = 1
    end
    object tblMovCxLKCONTA: TIntegerField
      FieldName = 'LKCONTA'
      Origin = 'LKCONTA'
    end
    object tblMovCxLKCAIXA: TIntegerField
      FieldName = 'LKCAIXA'
      Origin = 'LKCAIXA'
    end
    object tblMovCxLKUSER: TIntegerField
      FieldName = 'LKUSER'
      Origin = 'LKUSER'
    end
    object tblMovCxLKEST3A: TIntegerField
      FieldName = 'LKEST3A'
      Origin = 'LKEST3A'
    end
  end
  object tblCodigo: TFDTable
    Connection = fdConPrinc
    UpdateOptions.UpdateTableName = 'codigo'
    TableName = 'codigo'
    Left = 336
    Top = 216
    object tblCodigoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
  end
  object sqlEstoque: TFDQuery
    Connection = fdConPrinc
    SQL.Strings = (
      'Select * From Estoque '
      'Where Data=:Data1')
    Left = 40
    Top = 280
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
      end>
    object sqlEstoqueDATA: TDateField
      FieldName = 'DATA'
    end
    object sqlEstoqueLKPROD: TWideStringField
      FieldName = 'LKPROD'
      Size = 15
    end
    object sqlEstoqueESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object sqlEstoquePVENDA: TFloatField
      FieldName = 'PVENDA'
    end
    object sqlEstoquePCUSTO: TFloatField
      FieldName = 'PCUSTO'
    end
  end
  object sqlReceber: TFDQuery
    Connection = fdConPrinc
    SQL.Strings = (
      'Select * from tabReceber'
      'where lkcliente=:p00'
      'and baixa='#39'N'#39)
    Left = 120
    Top = 280
    ParamData = <
      item
        Name = 'P00'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
    object sqlReceberDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
    end
    object sqlReceberLKVEND: TIntegerField
      FieldName = 'LKVEND'
    end
    object sqlReceberLKCLIENTE: TWideStringField
      FieldName = 'LKCLIENTE'
      Size = 8
    end
    object sqlReceberORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object sqlReceberVENC: TDateField
      FieldName = 'VENC'
    end
    object sqlReceberJURO: TFloatField
      FieldName = 'JURO'
    end
    object sqlReceberVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sqlReceberLKBANCO: TIntegerField
      FieldName = 'LKBANCO'
    end
    object sqlReceberLKAGENCIA: TWideStringField
      FieldName = 'LKAGENCIA'
      Size = 10
    end
    object sqlReceberNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object sqlReceberCONTA: TWideStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object sqlReceberTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sqlReceberDATAPAG: TDateField
      FieldName = 'DATAPAG'
    end
    object sqlReceberVRPAGO: TFloatField
      FieldName = 'VRPAGO'
    end
    object sqlReceberBAIXA: TWideStringField
      FieldName = 'BAIXA'
      Size = 1
    end
    object sqlReceberSELECIONAR: TWideStringField
      FieldName = 'SELECIONAR'
      Size = 1
    end
    object sqlReceberDEVOLVIDO: TWideStringField
      FieldName = 'DEVOLVIDO'
      Size = 1
    end
    object sqlReceberHAVER: TFloatField
      FieldName = 'HAVER'
    end
    object sqlReceberVALE: TWideStringField
      FieldName = 'VALE'
      Size = 1
    end
    object sqlReceberLKCARTAO: TSmallintField
      FieldName = 'LKCARTAO'
    end
    object sqlReceberCOMPRAS: TFloatField
      FieldName = 'COMPRAS'
    end
    object sqlReceberRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object sqlReceberESTORNO1: TFloatField
      FieldName = 'ESTORNO1'
    end
    object sqlReceberESTORNO2: TFloatField
      FieldName = 'ESTORNO2'
    end
    object sqlReceberPARCELA: TWideStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object sqlReceberNOSSONUMERO: TIntegerField
      FieldName = 'NOSSONUMERO'
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 408
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 136
    Top = 8
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    Modelo = ppEscPosEpson
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    CortaPapel = False
    Left = 372
    Top = 173
  end
end
