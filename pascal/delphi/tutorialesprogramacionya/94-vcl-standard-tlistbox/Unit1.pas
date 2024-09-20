unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lst1: TListBox;
    btn1: TButton;
    lst2: TListBox;
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
  for i := 0 to lst1.Items.Count - 1 do
  begin
    if lst1.Selected[i] then
    begin
      lst2.Items.Add(lst1.Items[i]);
    end;
  end;
end;

end.
