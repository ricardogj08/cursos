unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    procedure btn2Click(Sender: TObject);
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

{ Incrementa el valor del botón en 1. }
procedure TForm1.btn1Click(Sender: TObject);
var
  valorActual: Integer;
begin
  valorActual := StrToInt(btn1.Caption);
  valorActual := valorActual + 1;
  btn1.Caption := IntToStr(valorActual);
end;

{ Reinicia el incremento del botón a 1. }
procedure TForm1.btn2Click(Sender: TObject);
begin
  btn1.Caption := '1';
end;

end.
