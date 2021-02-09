object dmMod1: TdmMod1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 152
  Width = 340
  object dsFinan: TDataSource
    DataSet = tblFinan
    Left = 24
    Top = 72
  end
  object dsEmp: TDataSource
    DataSet = tblEmp
    Left = 80
    Top = 72
  end
  object dsFiscal: TDataSource
    DataSet = tbFiscal
    Left = 280
    Top = 72
  end
  object dsImp: TDataSource
    DataSet = tblImp
    Left = 216
    Top = 72
  end
  object dsMatricial: TDataSource
    DataSet = tblMatricial
    Left = 144
    Top = 72
  end
  object tblFinan: TFDTable
    Filtered = True
    Filter = 'Fecha='#39'N'#39
    Connection = dmMod.fdConPrinc
    UpdateOptions.UpdateTableName = 'TABFINANC'
    TableName = 'TABFINANC'
    Left = 24
    Top = 16
    object tblFinanCODVEND: TSmallintField
      FieldName = 'CODVEND'
    end
    object tblFinanDATAABERTURA: TDateField
      FieldName = 'DATAABERTURA'
      EditMask = '!99/99/0000;1;_'
    end
    object tblFinanHORAABERTURA: TTimeField
      FieldName = 'HORAABERTURA'
      EditMask = '!90:00;1;_'
    end
    object tblFinanVALORABERTURA: TFloatField
      FieldName = 'VALORABERTURA'
    end
    object tblFinanDATAFECHA: TDateField
      FieldName = 'DATAFECHA'
      EditMask = '!99/99/0000;1;_'
    end
    object tblFinanHORAFECHA: TTimeField
      FieldName = 'HORAFECHA'
      EditMask = '!90:00;1;_'
    end
    object tblFinanDINHEIRO: TFloatField
      FieldName = 'DINHEIRO'
      currency = True
    end
    object tblFinanCHEQUE: TFloatField
      FieldName = 'CHEQUE'
      currency = True
    end
    object tblFinanVALE: TFloatField
      FieldName = 'VALE'
      currency = True
    end
    object tblFinanCARTAO: TFloatField
      FieldName = 'CARTAO'
      currency = True
    end
    object tblFinanPROMISSORIA: TFloatField
      FieldName = 'PROMISSORIA'
      currency = True
    end
    object tblFinanPREDATADO: TFloatField
      FieldName = 'PREDATADO'
      currency = True
    end
    object tblFinanESTORNO: TFloatField
      FieldName = 'ESTORNO'
      currency = True
    end
    object tblFinanSANGRIA: TFloatField
      FieldName = 'SANGRIA'
      currency = True
    end
    object tblFinanREFORCO: TFloatField
      FieldName = 'REFORCO'
      currency = True
    end
    object tblFinanFECHA: TWideStringField
      FieldName = 'FECHA'
      Size = 1
    end
    object tblFinanPAGAS: TFloatField
      FieldName = 'PAGAS'
      currency = True
    end
    object tblFinanAVISTA: TFloatField
      FieldName = 'AVISTA'
      currency = True
    end
    object tblFinanRECEBIMENTO: TFloatField
      FieldName = 'RECEBIMENTO'
      currency = True
    end
  end
  object tblEmp: TFDTable
    Connection = dmMod.fdConPrinc
    UpdateOptions.UpdateTableName = 'EMPRESA'
    TableName = 'EMPRESA'
    Left = 80
    Top = 16
    object tblEmpRAZAOSOCIAL: TWideStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object tblEmpFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 25
    end
    object tblEmpREFERECIA: TWideStringField
      FieldName = 'REFERECIA'
      Origin = 'REFERECIA'
      Size = 50
    end
    object tblEmpENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 60
    end
    object tblEmpCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 30
    end
    object tblEmpESTADO: TWideStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object tblEmpCEP: TWideStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object tblEmpFONE1: TWideStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 16
    end
    object tblEmpFONE2: TWideStringField
      FieldName = 'FONE2'
      Origin = 'FONE2'
      Size = 16
    end
    object tblEmpCGC: TWideStringField
      FieldName = 'CGC'
      Origin = 'CGC'
      Required = True
      Size = 18
    end
    object tblEmpCGF: TWideStringField
      FieldName = 'CGF'
      Origin = 'CGF'
      Size = 13
    end
    object tblEmpLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object tblEmpPASTA: TWideStringField
      FieldName = 'PASTA'
      Origin = 'PASTA'
    end
    object tblEmpCODUF: TWideStringField
      FieldName = 'CODUF'
      Origin = 'CODUF'
      FixedChar = True
      Size = 2
    end
    object tblEmpCODMUNICIPIO: TWideStringField
      FieldName = 'CODMUNICIPIO'
      Origin = 'CODMUNICIPIO'
      Size = 5
    end
    object tblEmpNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 5
    end
    object tblEmpCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
    end
    object tblEmpCNAE: TWideStringField
      FieldName = 'CNAE'
      Origin = 'CNAE'
      Size = 7
    end
    object tblEmpINSCMUNICIPAL: TWideStringField
      FieldName = 'INSCMUNICIPAL'
      Origin = 'INSCMUNICIPAL'
      Size = 15
    end
    object tblEmpINSCESTADUAL: TWideStringField
      FieldName = 'INSCESTADUAL'
      Origin = 'INSCESTADUAL'
      Size = 14
    end
    object tblEmpBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object tblEmpREGIMETRIB: TWideStringField
      FieldName = 'REGIMETRIB'
      Origin = 'REGIMETRIB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tblEmpEMAILPRINCIPAL: TWideStringField
      FieldName = 'EMAILPRINCIPAL'
      Origin = 'EMAILPRINCIPAL'
      Size = 60
    end
    object tblEmpEMAILALTERNATIVO: TWideStringField
      FieldName = 'EMAILALTERNATIVO'
      Origin = 'EMAILALTERNATIVO'
      Size = 60
    end
    object tblEmpCSTCSOSN: TWideStringField
      FieldName = 'CSTCSOSN'
      Origin = 'CSTCSOSN'
      Size = 4
    end
    object tblEmpCFOP: TWideStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
  end
  object tblMatricial: TFDTable
    Connection = dmMod.fdConPrinc
    UpdateOptions.UpdateTableName = 'IMPMATRICIAL'
    TableName = 'IMPMATRICIAL'
    Left = 144
    Top = 16
    object tblMatricialESTACAO: TWideStringField
      FieldName = 'ESTACAO'
      Origin = 'ESTACAO'
    end
    object tblMatricialCOMPARTILHA: TWideStringField
      FieldName = 'COMPARTILHA'
      Origin = 'COMPARTILHA'
      Size = 40
    end
    object tblMatricialTIPO: TWideStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object tblMatricialPATH: TWideStringField
      FieldName = 'PATH'
      Origin = 'PATH'
      Size = 60
    end
    object tblMatricialMARCA: TWideStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      FixedChar = True
      Size = 1
    end
    object tblMatricialPATHCARGA: TWideStringField
      FieldName = 'PATHCARGA'
      Origin = 'PATHCARGA'
      Size = 40
    end
    object tblMatricialID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object tblMatricialIPCAIXA: TWideStringField
      FieldName = 'IPCAIXA'
      Origin = 'IPCAIXA'
    end
    object tblMatricialIMPRESSORAMODELO: TWideStringField
      FieldName = 'IMPRESSORAMODELO'
      Origin = 'IMPRESSORAMODELO'
    end
  end
  object tblImp: TFDTable
    Connection = dmMod.fdConPrinc
    UpdateOptions.UpdateTableName = 'IMPRESSORAS'
    TableName = 'IMPRESSORAS'
    Left = 216
    Top = 16
    object tblImpMODELO: TWideStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 30
    end
    object tblImpPORTA: TWideStringField
      FieldName = 'PORTA'
      Origin = 'PORTA'
      FixedChar = True
      Size = 4
    end
    object tblImpMENSAGEM: TWideStringField
      FieldName = 'MENSAGEM'
      Origin = 'MENSAGEM'
      Size = 40
    end
    object tblImpDESABILTAR: TWideStringField
      FieldName = 'DESABILTAR'
      Origin = 'DESABILTAR'
      FixedChar = True
      Size = 1
    end
    object tblImpMENSAGEM1: TWideStringField
      FieldName = 'MENSAGEM1'
      Origin = 'MENSAGEM1'
      Size = 40
    end
    object tblImpMENSAGEM2: TWideStringField
      FieldName = 'MENSAGEM2'
      Origin = 'MENSAGEM2'
      Size = 40
    end
    object tblImpTAXATRS: TWideStringField
      FieldName = 'TAXATRS'
      Origin = 'TAXATRS'
      Size = 10
    end
  end
  object tbFiscal: TFDTable
    Connection = dmMod.fdConPrinc
    UpdateOptions.UpdateTableName = 'TABFISCAL'
    TableName = 'TABFISCAL'
    Left = 280
    Top = 16
    object tbFiscalCTS: TWideStringField
      FieldName = 'CTS'
      Origin = 'CTS'
      FixedChar = True
      Size = 2
    end
    object tbFiscalTRIBUTACAO: TWideStringField
      FieldName = 'TRIBUTACAO'
      Origin = 'TRIBUTACAO'
      Size = 15
    end
    object tbFiscalVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
  end
end
