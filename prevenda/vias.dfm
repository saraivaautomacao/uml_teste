object FormVias: TFormVias
  Left = 356
  Top = 305
  BorderStyle = bsDialog
  Caption = 'Impress'#227'o'
  ClientHeight = 120
  ClientWidth = 244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 14
  object Button1: TButton
    Left = 31
    Top = 81
    Width = 81
    Height = 27
    Caption = '&OK'
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 135
    Top = 81
    Width = 80
    Height = 27
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 1
  end
  object rgRelat: TRadioGroup
    Left = 6
    Top = 18
    Width = 226
    Height = 43
    Caption = 'Tipo Relat'#243'rio'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Cu&pom'
      '&Form. Continuo')
    TabOrder = 2
  end
end
