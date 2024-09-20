unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
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
  Caption := '';

  if chk1.Checked then
  begin
    Caption := Caption + '(Inglés)';
  end;

  if chk2.Checked then
  begin
    Caption := Caption + '(Francés)';
  end;

  if chk3.Checked then
  begin
    Caption := Caption + '(Alemán)';
  end;
end;

end.
