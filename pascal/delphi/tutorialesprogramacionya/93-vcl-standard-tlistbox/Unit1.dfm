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
  object lst1: TListBox
    Left = 48
    Top = 40
    Width = 121
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      'Papas'
      'Manzanas'
      'Mandarinas'
      'Uvas'
      'Cebollas'
      'Mel'#243'n'
      'Sand'#237'a'
      'Mango'
      'Papaya'
      'Pepino'
      'Pi'#241'a')
    TabOrder = 0
  end
  object btn1: TButton
    Left = 48
    Top = 168
    Width = 121
    Height = 25
    Caption = 'Extraer seleccionado'
    TabOrder = 1
    OnClick = btn1Click
  end
end
