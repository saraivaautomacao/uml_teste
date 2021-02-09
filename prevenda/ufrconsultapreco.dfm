object frConsultaPreco: TfrConsultaPreco
  Left = 298
  Top = 217
  BorderStyle = bsDialog
  Caption = 'Consulta de Pre'#231'os'
  ClientHeight = 498
  ClientWidth = 919
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 919
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 14
      Width = 436
      Height = 16
      Caption = 
        'Digite a informa'#231'ao(Descri'#231'ao/Codigo Principal/C'#243'digo Secund'#225'rio' +
        ')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edBusca: TEdit
      Left = 16
      Top = 32
      Width = 465
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'EDBUSCA'
      OnExit = edBuscaExit
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 126
    Width = 919
    Height = 372
    Align = alClient
    BorderStyle = bsNone
    DataSource = dtsBusca
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGOAUXLIAR'
        Title.Alignment = taCenter
        Title.Caption = 'Cod. Sec.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 367
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Unidade'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOVENDA'
        Title.Alignment = taCenter
        Title.Caption = 'Preco Venda'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT'
        Title.Alignment = taCenter
        Title.Caption = 'Quant'
        Width = 80
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 919
    Height = 61
    Align = alTop
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object dtsBusca: TDataSource
    DataSet = qryBusca
    OnDataChange = dtsBuscaDataChange
    Left = 392
    Top = 264
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 552
    Top = 16
  end
  object qryBusca: TFDQuery
    Filtered = True
    OnFilterRecord = qryBuscaFilterRecord
    Connection = dmMod.fdConPrinc
    SQL.Strings = (
      'Select codigo,produto,precovenda,quant,unidade,codigoauxliar'
      'from tabest1')
    Left = 448
    Top = 248
    object qryBuscaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 15
    end
    object qryBuscaPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object qryBuscaPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      currency = True
    end
    object qryBuscaQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object qryBuscaUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qryBuscaCODIGOAUXLIAR: TWideStringField
      FieldName = 'CODIGOAUXLIAR'
      Origin = 'CODIGOAUXLIAR'
      Size = 15
    end
  end
end
