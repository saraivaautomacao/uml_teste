object dmMod2: TdmMod2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 125
  Width = 230
  object tbCodigo: TFDTable
    Connection = dmMod.fdConPrinc
    UpdateOptions.UpdateTableName = 'CODIGOINC'
    TableName = 'CODIGOINC'
    Left = 16
    Top = 32
    object tbCodigoPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
    end
    object tbCodigoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object tbCodigoFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object tbCodigoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object tbCodigoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object tbCodigoFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
    end
    object tbCodigoPAGAR: TIntegerField
      FieldName = 'PAGAR'
      Origin = 'PAGAR'
    end
    object tbCodigoCAMPO1: TIntegerField
      FieldName = 'CAMPO1'
      Origin = 'CAMPO1'
    end
    object tbCodigoCAMPO2: TIntegerField
      FieldName = 'CAMPO2'
      Origin = 'CAMPO2'
    end
    object tbCodigoCAMPO3: TIntegerField
      FieldName = 'CAMPO3'
      Origin = 'CAMPO3'
    end
    object tbCodigoDAV: TIntegerField
      FieldName = 'DAV'
      Origin = 'DAV'
    end
    object tbCodigoPREVENDA: TIntegerField
      FieldName = 'PREVENDA'
      Origin = 'PREVENDA'
    end
    object tbCodigoPRODCODIGOINTERNO: TIntegerField
      FieldName = 'PRODCODIGOINTERNO'
      Origin = 'PRODCODIGOINTERNO'
    end
  end
  object tbmPag: TFDTable
    Connection = dmMod.fdConPrinc
    UpdateOptions.UpdateTableName = 'TABMPAG'
    TableName = 'TABMPAG'
    Left = 120
    Top = 40
    object tbmPagDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object tbmPagSEQ: TWideStringField
      FieldName = 'SEQ'
      Origin = 'SEQ'
      FixedChar = True
      Size = 1
    end
    object tbmPagECF: TWideStringField
      FieldName = 'ECF'
      Origin = 'ECF'
      FixedChar = True
      Size = 3
    end
    object tbmPagSGE: TWideStringField
      FieldName = 'SGE'
      Origin = 'SGE'
      FixedChar = True
      Size = 2
    end
    object tbmPagIDCAIXA: TWideStringField
      FieldName = 'IDCAIXA'
      Origin = 'IDCAIXA'
      FixedChar = True
      Size = 1
    end
  end
end
