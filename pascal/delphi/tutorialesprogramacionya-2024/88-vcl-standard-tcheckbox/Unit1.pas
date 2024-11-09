unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    chk1: TCheckBox;
    btn1: TButton;
    procedure chk1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Realiza la acción del checkbox. }
procedure TForm1.chk1Click(Sender: TObject);
begin
  if chk1.Checked then
  begin
    btn1.Enabled := True;
  end
  else
  begin
    btn1.Enabled := False;
  end;
end;

end.
