object frconPrevenda: TfrconPrevenda
  Left = 401
  Top = 218
  BorderStyle = bsDialog
  Caption = 'Consulta Pre-Vendas Pendentes'
  ClientHeight = 326
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 708
    Height = 281
    Align = alTop
    DataSource = dtsConsulta
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO_PV'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_EMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA_EMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Hora'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 272
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codvend'
        Title.Alignment = taCenter
        Title.Caption = 'Cod. Vend'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FINALIZADO'
        Title.Alignment = taCenter
        Title.Caption = 'Finalizado'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 231
    Top = 291
    Width = 116
    Height = 25
    Caption = 'Fechar'
    ModalResult = 2
    TabOrder = 1
  end
  object Button2: TButton
    Left = 359
    Top = 291
    Width = 116
    Height = 25
    Caption = 'Cancelar Pre-Venda'
    TabOrder = 2
    OnClick = Button2Click
  end
  object dtsConsulta: TDataSource
    DataSet = tbConsulta
    Left = 288
    Top = 104
  end
  object tbConsulta: TFDTable
    Filtered = True
    Filter = 'finalizado='#39'N'#39
    IndexFieldNames = 'NUMERO_PV'
    Connection = dmMod.fdConPrinc
    UpdateOptions.UpdateTableName = 'prevenda_cabecalho'
    TableName = 'prevenda_cabecalho'
    Left = 360
    Top = 112
    object tbConsultaNUMERO_PV: TIntegerField
      FieldName = 'NUMERO_PV'
      Origin = 'NUMERO_PV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbConsultaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object tbConsultaHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object tbConsultaCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 14
    end
    object tbConsultaCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 80
    end
    object tbConsultaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 80
    end
    object tbConsultaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 5
    end
    object tbConsultaCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 15
    end
    object tbConsultaTAXA_ACRESCIMO: TFloatField
      FieldName = 'TAXA_ACRESCIMO'
      Origin = 'TAXA_ACRESCIMO'
    end
    object tbConsultaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
    end
    object tbConsultaTAXA_DESCONTO: TFloatField
      FieldName = 'TAXA_DESCONTO'
      Origin = 'TAXA_DESCONTO'
    end
    object tbConsultaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object tbConsultaSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
    end
    object tbConsultaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object tbConsultaLKCLIENTE: TWideStringField
      FieldName = 'LKCLIENTE'
      Origin = 'LKCLIENTE'
      Size = 8
    end
    object tbConsultaSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object tbConsultaCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      Origin = 'CODVENDEDOR'
    end
    object tbConsultaFINALIZADO: TWideStringField
      FieldName = 'FINALIZADO'
      Origin = 'FINALIZADO'
      FixedChar = True
      Size = 1
    end
    object tbConsultaCANCELADO: TWideStringField
      FieldName = 'CANCELADO'
      Origin = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
  end
end
