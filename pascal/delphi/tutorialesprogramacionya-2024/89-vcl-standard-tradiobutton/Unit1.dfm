object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Formulario'
  ClientHeight = 269
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rb1: TRadioButton
    Left = 32
    Top = 48
    Width = 113
    Height = 17
    Caption = '640*480'
    TabOrder = 0
  end
  object rb2: TRadioButton
    Left = 32
    Top = 88
    Width = 113
    Height = 17
    Caption = '1024*768'
    TabOrder = 1
  end
  object rb3: TRadioButton
    Left = 32
    Top = 128
    Width = 113
    Height = 17
    Caption = '1366*768'
    TabOrder = 2
  end
  object btn1: TButton
    Left = 32
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = btn1Click
  end
end
