object formLkClientes: TformLkClientes
  Left = 332
  Top = 141
  BorderStyle = bsDialog
  Caption = 'Localiza'#231#227'o R'#225'pida'
  ClientHeight = 448
  ClientWidth = 813
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgPesq: TPageControl
    Left = 0
    Top = 41
    Width = 813
    Height = 112
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 0
    OnChange = pgPesqChange
    object TabSheet1: TTabSheet
      Caption = '&Nome'
      object fldNome: TEdit
        Left = 9
        Top = 11
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        Text = 'FLDNOME'
        OnExit = fldNomeExit
        OnKeyUp = fldNomeKeyUp
      end
      object rgTipo: TRadioGroup
        Left = 5
        Top = 37
        Width = 260
        Height = 37
        Caption = 'Tipo Pesquisa'
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          '&Inicio'
          '&Meio'
          '&Fim'
          '&Tudo')
        TabOrder = 1
        OnClick = rgTipoClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'C'#243'&digo'
      ImageIndex = 1
      object fldCodigo: TEdit
        Left = 9
        Top = 19
        Width = 136
        Height = 21
        TabOrder = 0
        Text = 'fldCodigo'
        OnExit = fldCodigoExit
        OnKeyUp = fldCodigoKeyUp
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Docu&mento'
      ImageIndex = 2
      object Label2: TLabel
        Left = 18
        Top = 10
        Width = 31
        Height = 13
        Caption = 'C.P.F.'
      end
      object Label3: TLabel
        Left = 122
        Top = 10
        Width = 41
        Height = 13
        Caption = 'C.N.P.J.'
      end
      object Bevel3: TBevel
        Left = 10
        Top = 6
        Width = 241
        Height = 49
      end
      object fldCpf: TMaskEdit
        Left = 16
        Top = 27
        Width = 89
        Height = 21
        EditMask = '!999.999.999-99;1;_'
        MaxLength = 14
        TabOrder = 0
        Text = '   .   .   -  '
        OnExit = fldCpfExit
        OnKeyUp = fldCpfKeyUp
      end
      object fldcnpj: TMaskEdit
        Left = 120
        Top = 27
        Width = 121
        Height = 21
        EditMask = '!99.999.999/9999-99;1;_'
        MaxLength = 18
        TabOrder = 1
        Text = '  .   .   /    -  '
        OnExit = fldcnpjExit
        OnKeyUp = fldcnpjKeyUp
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Con&tato'
      ImageIndex = 4
      object fldContato: TEdit
        Left = 17
        Top = 19
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        Text = 'FLDNOME'
        OnExit = fldContatoExit
        OnKeyUp = fldContatoKeyUp
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 813
    Height = 41
    Align = alTop
    TabOrder = 3
    object Image1: TImage
      Left = 8
      Top = 6
      Width = 34
      Height = 33
      Picture.Data = {
        07544269746D617076020000424D760200000000000076000000280000002000
        0000200000000100040000000000000200000000000000000000100000000000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00777777777777777777777777777777777777777777777777777777777777
        7777777777777777737777777777777777777777777777773033777377777777
        77777777777777730B003333377777777777777777777730BBBB003033777777
        777777777777730BB778800B0337777777777777777730B778800BBBB0337777
        7777777777730778800BBBBBBB00337777777777773078800BBBBBBBBBB00033
        777777777308800BBBBBBBBBBBBB070033777777308007777777773777777077
        003377730007777777773778777777077B0077300FFFFFFFFF3FF3FF3FFFFFF0
        7703700FFFFFFFFF3FF3FF3FF3FFFFFF0033770FFFFFFF3FF3FF8FF8FF3FFFFF
        F0337770FFFFFFF3FF3FF3FF7FF7FFFFFF0777770FFFFFFF8FF8FF3FFFFFFFFF
        FFF0777770FFFFFFF3FF7FF7FFFFFFFFF0077777770FFFFFFF3FFFFFFFFFFFF0
        077777777770FFFFFFF7FFFFFFFFF0077777777777770FFFFFFFFFFFFFF00777
        77777777777770FFFFFFFFFFF0077777777777777777770FFFFFFFF007777777
        7777777777777770FFFFF0007777777777777777777777770FF0077777777777
        7777777777777777700777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777}
      Stretch = True
    end
    object Label1: TLabel
      Left = 48
      Top = 16
      Width = 141
      Height = 13
      Caption = 'Localiza'#231#227'o r'#225'pida de clientes'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 408
    Width = 813
    Height = 40
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 329
      Top = 6
      Width = 75
      Height = 24
      Caption = '&OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 410
      Top = 7
      Width = 74
      Height = 24
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object dbGrid1: TRxDBGrid
    Left = 0
    Top = 153
    Width = 813
    Height = 255
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 367
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Alignment = taCenter
        Title.Caption = 'Endere'#231'o'
        Width = 332
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTATO'
        Title.Alignment = taCenter
        Title.Caption = 'Contato'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIMITECRED'
        Title.Alignment = taCenter
        Title.Caption = 'Limite Cred.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ABREVIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATANASC'
        Title.Alignment = taCenter
        Title.Caption = 'Data Nasc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Alignment = taCenter
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Title.Alignment = taCenter
        Title.Caption = 'Cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Alignment = taCenter
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSC'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 448
    Top = 16
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 448
    Top = 200
  end
  object Query1: TFDQuery
    CachedUpdates = True
    Connection = dmMod.fdConPrinc
    SQL.Strings = (
      
        'Select codigo,nome,endereco,bairro,cidade,cep,telefone,abrevia,l' +
        'imitecred,'
      
        'lktipo,lkvend,rg,cpf,cnpj,insc,datanasc,contato,estado from tabc' +
        'li'
      'where codigo<>'#39'99999'#39
      'order By Nome')
    Left = 452
    Top = 81
    object Query1CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object Query1NOME: TWideStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object Query1ENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Query1BAIRRO: TWideStringField
      FieldName = 'BAIRRO'
    end
    object Query1CIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object Query1CEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object Query1TELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 30
    end
    object Query1ABREVIA: TWideStringField
      FieldName = 'ABREVIA'
      Size = 10
    end
    object Query1LIMITECRED: TFloatField
      FieldName = 'LIMITECRED'
    end
    object Query1LKTIPO: TIntegerField
      FieldName = 'LKTIPO'
    end
    object Query1LKVEND: TIntegerField
      FieldName = 'LKVEND'
    end
    object Query1RG: TWideStringField
      FieldName = 'RG'
    end
    object Query1CPF: TWideStringField
      FieldName = 'CPF'
      Size = 14
    end
    object Query1CNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object Query1INSC: TWideStringField
      FieldName = 'INSC'
    end
    object Query1DATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object Query1CONTATO: TWideStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object Query1ESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 2
    end
  end
end
