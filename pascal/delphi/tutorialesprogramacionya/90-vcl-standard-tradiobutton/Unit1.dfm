object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 300
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rg1: TRadioGroup
    Left = 24
    Top = 64
    Width = 185
    Height = 105
    Caption = #191'Qui'#233'n descubri'#243' Am'#233'rica?'
    Items.Strings = (
      'Americo Vespucio'
      'Crist'#243'bal Col'#243'n')
    TabOrder = 0
  end
  object btn1: TButton
    Left = 24
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btn1Click
  end
  object rg2: TRadioGroup
    Left = 320
    Top = 64
    Width = 185
    Height = 105
    Caption = #191'En qu'#233' a'#241'o se descubri'#243' Am'#233'rica?'
    Items.Strings = (
      '1492'
      '1496'
      '1502')
    TabOrder = 2
  end
end
