unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    btn1: TButton;
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
  if rb1.Checked then
  begin
    Width := 640;
    Height := 480;
  end
  else if rb2.Checked then
  begin
    Width := 1024;
    Height := 768;
  end
  else if rb3.Checked then
  begin
    Width := 1366;
    Height := 768;
  end;
end;

end.
