unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    pm1: TPopupMenu;
    ConvertiraMaysculas1: TMenuItem;
    ConvertiraMinsculas1: TMenuItem;
    lbl1: TLabel;
    edt1: TEdit;
    procedure ConvertiraMaysculas1Click(Sender: TObject);
    procedure ConvertiraMinsculas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Realiza la acción de convertir en mayúsculas el texto. }
procedure TForm1.ConvertiraMaysculas1Click(Sender: TObject);
begin
  edt1.Text := UpperCase(edt1.Text);
end;

{ Realiza la acción de convertir en minúsculas el texto. }
procedure TForm1.ConvertiraMinsculas1Click(Sender: TObject);
begin
  edt1.Text := LowerCase(edt1.Text);
end;

end.
