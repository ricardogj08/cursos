object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Formulario'
  ClientHeight = 300
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 80
    Width = 112
    Height = 13
    Caption = 'Ingresa el primer valor:'
  end
  object lbl2: TLabel
    Left = 29
    Top = 144
    Width = 123
    Height = 13
    Caption = 'Ingresa el segundo valor:'
  end
  object lbl3: TLabel
    Left = 184
    Top = 197
    Width = 6
    Height = 13
    Caption = '0'
  end
  object edt1: TEdit
    Left = 184
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object edt2: TEdit
    Left = 184
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object btn1: TButton
    Left = 77
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Sumar'
    TabOrder = 2
    OnClick = btn1Click
  end
end
