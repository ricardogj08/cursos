unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn1: TButton;
    procedure FormCreate(Sender: TObject);
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
  Color := Rgb(StrToInt(cbb1.Text),
               StrToInt(cbb2.Text),
               StrToInt(cbb3.Text));
end;

{ Realiza acciones al crear el formulario. }
procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  { Inicia los valores de los combo box. }
  for i := 0 to 255 do
  begin
    cbb1.Items.Add(IntToStr(i));
    cbb2.Items.Add(IntToStr(i));
    cbb3.Items.Add(IntToStr(i));
  end;

  { Define el valor por defecto. }
  cbb1.ItemIndex := 0;
  cbb2.ItemIndex := 0;
  cbb3.ItemIndex := 0;
end;

end.
