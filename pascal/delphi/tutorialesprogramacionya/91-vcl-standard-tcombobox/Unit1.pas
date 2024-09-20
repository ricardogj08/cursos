unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    cbb1: TComboBox;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Realiza la acción del botón. }
procedure TForm1.btn1Click(Sender: TObject);
begin
  if cbb1.ItemIndex = 0 then
  begin
    Color := ClRed;
  end
  else if cbb1.ItemIndex = 1 then
  begin
    Color := ClGreen;
  end
  else if cbb1.ItemIndex = 2 then
  begin
    Color := ClBlue;
  end;

  { Alternativa analizando el contenido del radio button. }
  {
  if cbb1.Text = 'Rojo' then
  begin
    Color := ClRed;
  end
  else if cbb1.Text = 'Verde' then
  begin
    Color := ClGreen;
  end
  else if cbb1.Text = 'Azul' then
  begin
    Color := ClBlue;
  end;
  }
end;

end.
