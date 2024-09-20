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
  object btn1: TButton
    Left = 24
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Pintar'
    TabOrder = 0
    OnClick = btn1Click
  end
  object cbb1: TComboBox
    Left = 24
    Top = 32
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'Color'
    Items.Strings = (
      'Rojo'
      'Verde'
      'Azul')
  end
end
