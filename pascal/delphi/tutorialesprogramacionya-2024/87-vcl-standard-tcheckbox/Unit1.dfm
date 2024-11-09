object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Formulario'
  ClientHeight = 271
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object chk1: TCheckBox
    Left = 32
    Top = 48
    Width = 97
    Height = 17
    Caption = 'Ingl'#233's'
    TabOrder = 0
  end
  object chk2: TCheckBox
    Left = 32
    Top = 88
    Width = 97
    Height = 17
    Caption = 'Franc'#233's'
    TabOrder = 1
  end
  object chk3: TCheckBox
    Left = 32
    Top = 128
    Width = 97
    Height = 17
    Caption = 'Alem'#225'n'
    TabOrder = 2
  end
  object btn1: TButton
    Left = 32
    Top = 192
    Width = 153
    Height = 25
    Caption = 'Mostrar seleccionados'
    TabOrder = 3
    OnClick = btn1Click
  end
end
