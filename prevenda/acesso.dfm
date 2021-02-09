object FormAcesso: TFormAcesso
  Left = 147
  Top = 88
  BorderStyle = bsDialog
  Caption = 'Acesso'
  ClientHeight = 89
  ClientWidth = 177
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
  object Label1: TLabel
    Left = 29
    Top = 8
    Width = 119
    Height = 13
    Caption = 'Infome Senha de Acesso'
  end
  object Edit1: TEdit
    Left = 28
    Top = 24
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    PasswordChar = '*'
    TabOrder = 0
    Text = 'EDIT1'
  end
  object Button1: TButton
    Left = 51
    Top = 56
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
    OnClick = Button1Click
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 104
    Top = 8
  end
end
