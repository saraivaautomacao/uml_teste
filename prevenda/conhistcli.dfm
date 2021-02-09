object frHistoricoCli: TfrHistoricoCli
  Left = 616
  Top = 506
  BorderStyle = bsDialog
  Caption = 'Consulta Hist'#243'rico Compra Clientes'
  ClientHeight = 549
  ClientWidth = 771
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
  object Label3: TLabel
    Left = 310
    Top = 248
    Width = 150
    Height = 21
    Caption = 'ARQUIVO MORTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 296
    Top = 39
    Width = 174
    Height = 21
    Caption = 'CONTAS EM ABERTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPeriodo: TLabel
    Left = 0
    Top = 524
    Width = 771
    Height = 25
    Align = alBottom
    Alignment = taCenter
    AutoSize = False
    Caption = 'lblPeriodo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 2
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 448
      Top = 4
      Width = 45
      Height = 13
      Caption = 'N'#170' Venda'
    end
    object fldCodigo: TComboEdit
      Left = 6
      Top = 20
      Width = 105
      Height = 21
      ClickKey = 113
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      TabOrder = 0
      Text = 'FLDCODIGO'
      OnButtonClick = fldCodigoButtonClick
      OnExit = fldCodigoExit
      OnKeyPress = fldCodigoKeyPress
    end
    object fldNome: TStaticText
      Left = 116
      Top = 16
      Width = 317
      Height = 21
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'fldNome'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object Button7: TButton
      Left = 616
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Periodo'
      TabOrder = 2
      OnClick = Button7Click
    end
    object edVenda: TEdit
      Left = 447
      Top = 17
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'edVenda'
      OnExit = edVendaExit
    end
  end
  object RxDBGrid2: TRxDBGrid
    Left = 7
    Top = 274
    Width = 626
    Height = 113
    DataSource = DataSource3
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    MultiSelect = True
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'ORDEM'
        Title.Caption = 'N'#186' Venda'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATACOMPRA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Compra'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENC'
        Title.Alignment = taCenter
        Title.Caption = 'Vencimento'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JURO'
        Title.Alignment = taCenter
        Title.Caption = 'Juro'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HAVER'
        Title.Alignment = taCenter
        Title.Caption = 'Entrada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAPAG'
        Title.Alignment = taCenter
        Title.Caption = 'Data Pag.'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VRPAGO'
        Title.Alignment = taCenter
        Title.Caption = 'Vr. Pago'
        Width = 72
        Visible = True
      end>
  end
  object RxDBGrid3: TRxDBGrid
    Left = 0
    Top = 395
    Width = 771
    Height = 129
    Hint = 'Use [CTRL]+[DELETE] - Excluir itens'
    Align = alBottom
    DataSource = DataSource2
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    MultiSelect = True
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'ORDEM'
        Title.Caption = 'N'#186' Venda'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Produto'
        Title.Alignment = taCenter
        Width = 252
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Unidade'
        Title.Alignment = taCenter
        Title.Caption = 'Unid'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VRUNIT'
        Title.Alignment = taCenter
        Title.Caption = 'P. Unit.'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Desc'
        Title.Alignment = taCenter
        Title.Caption = 'Desc/Acresc'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT'
        Title.Alignment = taCenter
        Title.Caption = 'Quant'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 60
    Width = 681
    Height = 85
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ORDEM'
        Title.Alignment = taCenter
        Title.Caption = 'N'#176' Venda'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATACOMPRA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Compra'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENC'
        Title.Alignment = taCenter
        Title.Caption = 'Vencimento'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JURO'
        Title.Alignment = taCenter
        Title.Caption = 'Juro'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HAVER'
        Title.Alignment = taCenter
        Title.Caption = 'Haver'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPRAS'
        Title.Alignment = taCenter
        Title.Caption = 'Compras'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESTANTE'
        Title.Alignment = taCenter
        Title.Caption = 'Restante'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTORNO1'
        Title.Alignment = taCenter
        Title.Caption = 'Cancela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAPAG'
        Title.Alignment = taCenter
        Title.Caption = 'Data Pag.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VRPAGO'
        Title.Alignment = taCenter
        Title.Caption = 'Vr. Pago'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 150
    Width = 753
    Height = 97
    DataSource = DataSource4
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ORDEM'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Venda'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LKPROD'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Produto'
        Title.Alignment = taCenter
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Title.Alignment = taCenter
        Title.Caption = 'Un'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT'
        Title.Alignment = taCenter
        Title.Caption = 'Quant.'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VRUNIT'
        Title.Alignment = taCenter
        Title.Caption = 'P. Unit'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Desc %'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = rxQuery1
    Left = 720
    Top = 248
  end
  object DataSource2: TDataSource
    DataSet = rxQuery2
    Left = 448
    Top = 432
  end
  object DataSource3: TDataSource
    DataSet = rxQuery3
    Left = 448
    Top = 336
  end
  object DataSource4: TDataSource
    Left = 720
    Top = 320
  end
  object rxQuery1: TFDQuery
    Connection = dmMod.fdConPrinc
    SQL.Strings = (
      
        'Select lkcliente,datacompra,venc,juro,haver,valor,datapag,vrpago' +
        ',baixa,ordem,estorno1,'
      'compras,restante'
      'from tabreceber'
      'Where lkCliente=:Codigo '
      'and'
      'datacompra  between  :data1 and :data2'
      'and'
      'ordem Like  :p03')
    Left = 656
    Top = 248
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'P03'
        ParamType = ptInput
      end>
    object rxQuery1LKCLIENTE: TWideStringField
      FieldName = 'LKCLIENTE'
      Size = 8
    end
    object rxQuery1DATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      EditMask = '!99/99/00;1;_'
    end
    object rxQuery1VENC: TDateField
      FieldName = 'VENC'
      EditMask = '!99/99/00;1;_'
    end
    object rxQuery1JURO: TFloatField
      FieldName = 'JURO'
    end
    object rxQuery1HAVER: TFloatField
      FieldName = 'HAVER'
      currency = True
    end
    object rxQuery1VALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
    object rxQuery1DATAPAG: TDateField
      FieldName = 'DATAPAG'
      EditMask = '!99/99/00;1;_'
    end
    object rxQuery1VRPAGO: TFloatField
      FieldName = 'VRPAGO'
      currency = True
    end
    object rxQuery1BAIXA: TWideStringField
      FieldName = 'BAIXA'
      Size = 1
    end
    object rxQuery1ORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object rxQuery1ESTORNO1: TFloatField
      FieldName = 'ESTORNO1'
    end
    object rxQuery1COMPRAS: TFloatField
      FieldName = 'COMPRAS'
      currency = True
    end
    object rxQuery1RESTANTE: TFloatField
      FieldName = 'RESTANTE'
      currency = True
    end
  end
  object rxQuery4: TFDQuery
    OnCalcFields = RxQuery4CalcFields
    MasterSource = DataSource1
    MasterFields = 'LKCLIENTE'
    Connection = dmMod.fdConPrinc
    SQL.Strings = (
      'select data,lkprod,ordem,lkvend,quant,desconto,vrunit,lkcliente'
      'from tabsaida1'
      'where lkcliente=:lkcliente')
    Left = 656
    Top = 320
    ParamData = <
      item
        Name = 'LKCLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
    object rxQuery4DATA: TDateField
      FieldName = 'DATA'
      DisplayFormat = 'dd/mm/yy'
    end
    object rxQuery4LKPROD: TWideStringField
      FieldName = 'LKPROD'
      Size = 15
    end
    object rxQuery4ORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object rxQuery4LKVEND: TIntegerField
      FieldName = 'LKVEND'
    end
    object rxQuery4QUANT: TFloatField
      FieldName = 'QUANT'
    end
    object rxQuery4DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object rxQuery4VRUNIT: TFloatField
      FieldName = 'VRUNIT'
      currency = True
    end
    object rxQuery4LKCLIENTE: TWideStringField
      FieldName = 'LKCLIENTE'
      Size = 8
    end
    object rxQuery4Produto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = dmMod.tblProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'LKPROD'
      Size = 40
      Lookup = True
    end
    object rxQuery4Unidade: TStringField
      FieldKind = fkLookup
      FieldName = 'Unidade'
      LookupDataSet = dmMod.tblProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UNIDADE'
      KeyFields = 'LKPROD'
      Size = 2
      Lookup = True
    end
    object rxQuery4Total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object rxQuery2: TFDQuery
    OnCalcFields = RxQuery2CalcFields
    MasterSource = DataSource3
    MasterFields = 'LKCLIENTE'
    Connection = dmMod.fdConPrinc
    SQL.Strings = (
      'Select * from TabMorto'
      'Where lkcliente=:lkcliente')
    Left = 376
    Top = 432
    ParamData = <
      item
        Name = 'LKCLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
    object rxQuery2DATA: TDateField
      FieldName = 'DATA'
    end
    object rxQuery2ORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object rxQuery2LKVEND: TIntegerField
      FieldName = 'LKVEND'
    end
    object rxQuery2QUANT: TFloatField
      FieldName = 'QUANT'
    end
    object rxQuery2LKPROD: TWideStringField
      FieldName = 'LKPROD'
      Size = 15
    end
    object rxQuery2VRUNIT: TFloatField
      FieldName = 'VRUNIT'
    end
    object rxQuery2LKCLIENTE: TWideStringField
      FieldName = 'LKCLIENTE'
      Size = 8
    end
    object rxQuery2BAIXA: TWideStringField
      FieldName = 'BAIXA'
      Size = 1
    end
    object rxQuery2SELECIONAR: TWideStringField
      FieldName = 'SELECIONAR'
      Size = 1
    end
    object rxQuery2DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object rxQuery2LKSETOR: TSmallintField
      FieldName = 'LKSETOR'
    end
    object rxQuery2FISCAL: TWideStringField
      FieldName = 'FISCAL'
      Size = 1
    end
    object rxQuery2FLAGESTACAO: TWideStringField
      FieldName = 'FLAGESTACAO'
      Size = 1
    end
    object rxQuery2LIVROCAIXA: TWideStringField
      FieldName = 'LIVROCAIXA'
      Size = 1
    end
    object rxQuery2ENCARREGADO: TWideStringField
      FieldName = 'ENCARREGADO'
    end
    object rxQuery2ESTORNO: TFloatField
      FieldName = 'ESTORNO'
    end
    object rxQuery2FORMAPGTO: TWideStringField
      FieldName = 'FORMAPGTO'
      Size = 1
    end
    object rxQuery2VALE: TWideStringField
      FieldName = 'VALE'
      Size = 1
    end
    object rxQuery2LKCARTAO: TSmallintField
      FieldName = 'LKCARTAO'
    end
    object rxQuery2OBS: TWideStringField
      FieldName = 'OBS'
      Size = 10
    end
    object rxQuery2LKCAIXA: TSmallintField
      FieldName = 'LKCAIXA'
    end
    object rxQuery2LKVENDCOMISSAO: TSmallintField
      FieldName = 'LKVENDCOMISSAO'
    end
    object rxQuery2Produto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = dmMod.tblProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'LKPROD'
      Size = 40
      Lookup = True
    end
    object rxQuery2Unidade: TStringField
      FieldKind = fkLookup
      FieldName = 'Unidade'
      LookupDataSet = dmMod.tblProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UNIDADE'
      KeyFields = 'LKPROD'
      Size = 2
      Lookup = True
    end
    object rxQuery2Cliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = dmMod.tblClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'LKCLIENTE'
      Size = 40
      Lookup = True
    end
    object rxQuery2TipoVenda: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoVenda'
      Size = 40
      Calculated = True
    end
    object rxQuery2Total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object rxQuery3: TFDQuery
    Connection = dmMod.fdConPrinc
    SQL.Strings = (
      
        'Select lkcliente,datacompra,venc,juro,haver,valor,datapag,vrpago' +
        ',baixa,ordem'
      'from tabMorto1'
      'Where lkCliente=:Codigo'
      'and'
      'datacompra between :data1 and :data2'
      'and'
      'ordem Like :p03')
    Left = 376
    Top = 336
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'P03'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
    object rxQuery3LKCLIENTE: TWideStringField
      FieldName = 'LKCLIENTE'
      Size = 8
    end
    object rxQuery3DATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      DisplayFormat = 'dd/mm/yy'
    end
    object rxQuery3VENC: TDateField
      FieldName = 'VENC'
      DisplayFormat = 'dd/mm/yy'
    end
    object rxQuery3JURO: TFloatField
      FieldName = 'JURO'
    end
    object rxQuery3HAVER: TFloatField
      FieldName = 'HAVER'
      currency = True
    end
    object rxQuery3VALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
    object rxQuery3DATAPAG: TDateField
      FieldName = 'DATAPAG'
      DisplayFormat = 'dd/mm/yy'
    end
    object rxQuery3VRPAGO: TFloatField
      FieldName = 'VRPAGO'
      currency = True
    end
    object rxQuery3BAIXA: TWideStringField
      FieldName = 'BAIXA'
      Size = 1
    end
    object rxQuery3ORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
end
