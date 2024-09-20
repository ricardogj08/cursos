unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    Opciones1: TMenuItem;
    Colores1: TMenuItem;
    Salir1: TMenuItem;
    Rojo1: TMenuItem;
    Verde1: TMenuItem;
    Azul1: TMenuItem;
    N1: TMenuItem;
    procedure Salir1Click(Sender: TObject);
    procedure Rojo1Click(Sender: TObject);
    procedure Verde1Click(Sender: TObject);
    procedure Azul1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Realiza la acción de la opción Azul del menú de opciones de colores. }
procedure TForm1.Azul1Click(Sender: TObject);
begin
  Color := ClBlue;
end;

{ Realiza la acción de la opción Rojo del menú de opciones de colores. }
procedure TForm1.Rojo1Click(Sender: TObject);
begin
  Color := ClRed;
end;

{ Realiza la acción de Salir en el menú de opciones. }
procedure TForm1.Salir1Click(Sender: TObject);
begin
  Close;
end;

{ Realiza la acción de la opción Verde del menú de opciones de colores. }
procedure TForm1.Verde1Click(Sender: TObject);
begin
  Color := ClGreen;
end;

end.
