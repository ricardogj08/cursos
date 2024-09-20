object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Formulario'
  ClientHeight = 400
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
    Left = 160
    Top = 290
    Width = 75
    Height = 13
    Alignment = taCenter
    Caption = 'Mensaje'
  end
  object btn1: TButton
    Left = 160
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Presionar'
    TabOrder = 0
    OnClick = btn1Click
  end
end
