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
    Left = 59
    Top = 96
    Width = 80
    Height = 13
    Caption = 'Ingresa la clave:'
  end
  object lbl2: TLabel
    Left = 170
    Top = 165
    Width = 48
    Height = 13
    Caption = 'Estatus: ?'
  end
  object edt1: TEdit
    Left = 170
    Top = 93
    Width = 159
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object btn1: TButton
    Left = 170
    Top = 128
    Width = 159
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btn1Click
  end
end
