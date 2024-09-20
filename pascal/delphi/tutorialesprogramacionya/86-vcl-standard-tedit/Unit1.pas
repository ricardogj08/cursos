unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    lbl2: TLabel;
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

{ Realiza la acción de procesar la clave. }
procedure TForm1.btn1Click(Sender: TObject);
begin
  if edt1.Text = 'abc123' then
  begin
    lbl2.Caption := 'Clave correcta'
  end
  else
  begin
    lbl2.Caption := 'Clave incorrecta'
  end;
end;

end.
