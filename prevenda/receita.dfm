object FormReceita: TFormReceita
  Left = 232
  Top = 266
  BorderStyle = bsDialog
  Caption = 'Orçamento'
  ClientHeight = 461
  ClientWidth = 616
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 616
    Height = 96
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 11
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label2: TLabel
      Left = 8
      Top = 39
      Width = 49
      Height = 13
      Caption = 'Endereco:'
    end
    object Label3: TLabel
      Left = 5
      Top = 67
      Width = 61
      Height = 13
      Caption = 'Observação:'
    end
    object Label4: TLabel
      Left = 448
      Top = 2
      Width = 136
      Height = 20
      Caption = 'Nº ORÇAMENTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object fldNOrc: TLabel
      Left = 451
      Top = 23
      Width = 129
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'fldNOrc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object fldEndereco: TEdit
      Left = 72
      Top = 34
      Width = 217
      Height = 21
      TabOrder = 2
      Text = 'fldEndereco'
    end
    object fldObservacao: TEdit
      Left = 72
      Top = 63
      Width = 217
      Height = 21
      TabOrder = 3
      Text = 'Edit1'
      OnExit = fldObservacaoExit
    end
    object fldNome: TComboEdit
      Left = 72
      Top = 9
      Width = 281
      Height = 21
      ClickKey = 113
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      TabOrder = 1
      Text = 'fldNome'
      OnButtonClick = fldNomeButtonClick
    end
    object fldOrc: TComboEdit
      Left = 624
      Top = 90
      Width = 97
      Height = 21
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      TabOrder = 0
      Text = 'fldOrc'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 616
    Height = 227
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 614
      Height = 225
      Align = alClient
      BorderStyle = bsNone
      DataSource = DataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColExit = DBGrid1ColExit
      OnEditButtonClick = DBGrid1EditButtonClick
      OnKeyUp = DBGrid1KeyUp
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'Codigo'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Produto'
          ReadOnly = True
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'unidade'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quant'
          Title.Alignment = taCenter
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Precounit'
          Title.Alignment = taCenter
          Title.Caption = 'Preco Unit.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desconto'
          Title.Caption = 'Desc.(%)'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 364
    Width = 616
    Height = 97
    Align = alBottom
    TabOrder = 2
    object Label7: TLabel
      Left = 95
      Top = 9
      Width = 109
      Height = 24
      Caption = 'Forma Pgt.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 375
      Top = 4
      Width = 62
      Height = 24
      Caption = 'Haver:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 343
      Top = 32
      Width = 95
      Height = 24
      Caption = 'Desconto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button3: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Lancar'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 40
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 4
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 88
      Top = 40
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 5
      OnClick = Button5Click
    end
    object fldFormapgto: TEdit
      Left = 208
      Top = 12
      Width = 146
      Height = 21
      TabOrder = 0
      Text = 'fldFormapgto'
    end
    object fldHaver: TCurrencyEdit
      Left = 439
      Top = 8
      Width = 81
      Height = 21
      AutoSize = False
      TabOrder = 1
      ZeroEmpty = False
    end
    object Button2: TButton
      Left = 316
      Top = 59
      Width = 66
      Height = 25
      Caption = '&SOMAR'
      TabOrder = 6
      OnClick = Button2Click
    end
    object fldTotal: TCurrencyEdit
      Left = 388
      Top = 57
      Width = 133
      Height = 27
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object fldDesc: TCurrencyEdit
      Left = 439
      Top = 34
      Width = 81
      Height = 19
      AutoSize = False
      Ctl3D = True
      DisplayFormat = ' ,00.00 %;'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      ZeroEmpty = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 616
    Height = 41
    Align = alTop
    TabOrder = 3
    object Button6: TButton
      Left = 16
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 106
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Abrir'
      TabOrder = 1
      OnClick = Button7Click
    end
    object Button1: TButton
      Left = 194
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = tbReceita
    Left = 488
  end
  object tbReceita: TTable
    DatabaseName = 'estoque1'
    FieldDefs = <
      item
        Name = 'Orcamento'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Observacao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Desconto'
        DataType = ftFloat
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'Formapagto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Haver'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'tbReceitaIndex1'
        Fields = 'Orcamento'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'receita.db'
    Left = 456
    object tbReceitaOrcamento: TIntegerField
      FieldName = 'Orcamento'
    end
    object tbReceitaNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tbReceitaEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object tbReceitaObservacao: TStringField
      FieldName = 'Observacao'
      Size = 40
    end
    object tbReceitaDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object tbReceitaTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tbReceitaFormapagto: TStringField
      FieldName = 'Formapagto'
    end
    object tbReceitaHaver: TCurrencyField
      FieldName = 'Haver'
    end
  end
  object tbREceita1: TTable
    OnCalcFields = tbREceita1CalcFields
    OnNewRecord = tbREceita1NewRecord
    DatabaseName = 'estoque1'
    Filtered = True
    TableName = 'receita1.db'
    Left = 456
    Top = 40
    object tbREceita1LkOrc: TIntegerField
      FieldName = 'LkOrc'
    end
    object tbREceita1Codigo: TStringField
      FieldName = 'Codigo'
      Size = 13
    end
    object tbREceita1Precounit: TCurrencyField
      FieldName = 'Precounit'
    end
    object tbREceita1Quant: TFloatField
      FieldName = 'Quant'
    end
    object tbREceita1Total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object tbREceita1Produto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = dmMod.tblProd
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Produto'
      KeyFields = 'Codigo'
      Size = 40
      Lookup = True
    end
    object tbREceita1unidade: TStringField
      FieldKind = fkLookup
      FieldName = 'unidade'
      LookupDataSet = dmMod.tblProd
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Unidade'
      KeyFields = 'Codigo'
      Size = 2
      Lookup = True
    end
    object tbREceita1Desconto: TFloatField
      FieldName = 'Desconto'
    end
  end
  object DataSource2: TDataSource
    DataSet = tbREceita1
    Left = 488
    Top = 40
  end
  object ImpMat1: TImpMat2
    TipoImp = tiBobina
    ControleServico = False
    ArqDestino = 'LPT1'
    ImprimeLinhasFinais = False
    Acentuacao = False
    Medidas = tlDefault
    MargemX = 1
    MargemY = 1
    CPI = 17
    LPI = 6
    Left = 400
    Top = 16
  end
end
