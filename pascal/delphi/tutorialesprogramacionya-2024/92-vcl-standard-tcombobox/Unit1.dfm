object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 269
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 27
    Width = 26
    Height = 13
    Caption = 'Rojo:'
  end
  object lbl2: TLabel
    Left = 40
    Top = 91
    Width = 32
    Height = 13
    Caption = 'Verde:'
  end
  object lbl3: TLabel
    Left = 40
    Top = 155
    Width = 24
    Height = 13
    Caption = 'Azul:'
  end
  object cbb1: TComboBox
    Left = 104
    Top = 24
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object cbb2: TComboBox
    Left = 104
    Top = 88
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
  object cbb3: TComboBox
    Left = 104
    Top = 152
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object btn1: TButton
    Left = 104
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Pintar'
    TabOrder = 3
    OnClick = btn1Click
  end
end
