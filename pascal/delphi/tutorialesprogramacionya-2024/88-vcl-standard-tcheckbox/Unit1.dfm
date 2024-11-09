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
  object lbl1: TLabel
    Left = 32
    Top = 48
    Width = 223
    Height = 13
    Caption = #191'Est'#225's de acuerdo con las normas del servicio?'
  end
  object chk1: TCheckBox
    Left = 32
    Top = 80
    Width = 97
    Height = 17
    Caption = 'Acepto'
    TabOrder = 0
    OnClick = chk1Click
  end
  object btn1: TButton
    Left = 32
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Continuar'
    Enabled = False
    TabOrder = 1
  end
end
