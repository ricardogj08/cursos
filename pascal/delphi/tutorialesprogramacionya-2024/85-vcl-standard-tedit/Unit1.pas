unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    lbl3: TLabel;
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

{ Realiza la acción de sumar. }
procedure TForm1.btn1Click(Sender: TObject);
var
  valor1: Integer;
  valor2: Integer;
  resultado: Integer;
begin
  valor1 := StrToInt(edt1.Text);
  valor2 := StrToInt(edt2.Text);

  resultado := valor1 + valor2;

  lbl3.Caption := IntToStr(resultado);
end;

end.
