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
    Left = 16
    Top = 93
    Width = 85
    Height = 13
    Caption = 'Ingresa un texto:'
  end
  object edt1: TEdit
    Left = 16
    Top = 112
    Width = 281
    Height = 21
    PopupMenu = pm1
    TabOrder = 0
  end
  object pm1: TPopupMenu
    Left = 16
    Top = 56
    object ConvertiraMaysculas1: TMenuItem
      Caption = 'Convertir a May'#250'sculas'
      OnClick = ConvertiraMaysculas1Click
    end
    object ConvertiraMinsculas1: TMenuItem
      Caption = 'Convertir a Min'#250'sculas'
      OnClick = ConvertiraMinsculas1Click
    end
  end
end
