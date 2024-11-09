unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Acción del botón 1. }
procedure TForm1.btn1Click(Sender: TObject);
begin
  if Length(Form1.Caption) < 10 then
  begin
    Form1.Caption := Form1.Caption + btn1.Caption;
  end;
end;

{ Acción del botón 2. }
procedure TForm1.btn2Click(Sender: TObject);
begin
  if Length(Self.Caption) < 10 then
  begin
    Self.Caption := Self.Caption + btn2.Caption;
  end;
end;

{ Acción del botón 3. }
procedure TForm1.btn3Click(Sender: TObject);
begin
  if Length(Caption) < 10 then
  begin
    Caption := Caption + btn3.Caption;
  end;
end;

end.
