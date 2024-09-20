unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    Colores1: TMenuItem;
    Rojo1: TMenuItem;
    Verde1: TMenuItem;
    Azul1: TMenuItem;
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

{ Realiza la acción del menú de colores en Azul. }
procedure TForm1.Azul1Click(Sender: TObject);
begin
  Color := ClBlue;
end;

{ Realiza la acción del menú de colores en Rojo. }
procedure TForm1.Rojo1Click(Sender: TObject);
begin
  Color := ClRed;
end;

{ Realiza la acción del menú de colores en Verde. }
procedure TForm1.Verde1Click(Sender: TObject);
begin
  Color := ClGreen;
end;

end.
