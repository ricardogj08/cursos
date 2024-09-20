unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    rg1: TRadioGroup;
    btn1: TButton;
    rg2: TRadioGroup;
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
var
  i: Integer;
begin
  Caption := '';

  { Validación de la primera pregunta. }
  if rg1.ItemIndex = 1 then
  begin
    Caption := '(Primera correcta)';
  end
  else
  begin
    Caption := '(Primera incorrecta)';
  end;

  { Validación de la segunda pregunta. }
  if rg2.ItemIndex = 0 then
  begin
    Caption := Caption + '(Segunda correcta)';
  end
  else
  begin
    Caption := Caption + '(Segunda incorrecta)';
  end;
end;

end.
