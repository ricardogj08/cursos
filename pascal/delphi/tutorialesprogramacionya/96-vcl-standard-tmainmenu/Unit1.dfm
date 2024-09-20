object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Formulario'
  ClientHeight = 249
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 16
    Top = 8
    object Opciones1: TMenuItem
      Caption = 'Opciones'
      RadioItem = True
      object Colores1: TMenuItem
        Caption = 'Colores'
        object Rojo1: TMenuItem
          Caption = 'Rojo'
          ShortCut = 16466
          OnClick = Rojo1Click
        end
        object Verde1: TMenuItem
          Caption = 'Verde'
          ShortCut = 16455
          OnClick = Verde1Click
        end
        object Azul1: TMenuItem
          Caption = 'Azul'
          ShortCut = 16450
          OnClick = Azul1Click
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Salir1: TMenuItem
        Caption = 'Salir'
        ShortCut = 16465
        OnClick = Salir1Click
      end
    end
  end
end
