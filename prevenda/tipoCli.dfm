object FormTipoCli: TFormTipoCli
  Left = 481
  Top = 239
  BorderStyle = bsDialog
  Caption = 'Inclus'#227'o de Cliente'
  ClientHeight = 201
  ClientWidth = 234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object rgOrdem: TRadioGroup
    Left = 1
    Top = 7
    Width = 216
    Height = 81
    Caption = 'Tipo de Pessoa'
    Items.Strings = (
      '&F'#237'sica'
      '&Jur'#237'dica')
    TabOrder = 0
    OnClick = rgOrdemClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 92
    Width = 217
    Height = 76
    Caption = 'Cliente'
    TabOrder = 2
    object Label1: TLabel
      Left = 14
      Top = 39
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object fldCpf: TMaskEdit
      Left = 38
      Top = 37
      Width = 121
      Height = 22
      EditMask = '!999.999.999-99;1;_'
      MaxLength = 14
      TabOrder = 0
      Text = '   .   .   -  '
    end
  end
  object GroupBox2: TGroupBox
    Left = 7
    Top = 92
    Width = 217
    Height = 74
    Caption = 'Empresa'
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 37
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    object fldCnpj: TMaskEdit
      Left = 41
      Top = 34
      Width = 121
      Height = 22
      EditMask = '!99.999.999/9999-99;1;_'
      MaxLength = 18
      TabOrder = 0
      Text = '  .   .   /    -  '
    end
  end
  object Button1: TButton
    Left = 29
    Top = 172
    Width = 75
    Height = 25
    Caption = '&OK'
    ModalResult = 1
    TabOrder = 3
  end
  object Button2: TButton
    Left = 119
    Top = 173
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 4
  end
  object MREnter1: TMREnter
    ClassList.Strings = (
      'TRADIOGROUP'
      'TMaskEdit'
      'TEdit'
      'TDBEdit'
      'TDBCheckBox'
      'TTabbedNoteBook'
      'TDBCheckDocEdit'
      'TMRDBExtEdit'
      'TDBDateEdit'
      '')
    Enabled = True
    Left = 120
    Top = 64
  end
end
