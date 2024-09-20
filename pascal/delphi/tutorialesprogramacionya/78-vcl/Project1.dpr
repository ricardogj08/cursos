program Project1;

{ Archivo principal de la aplicación. }
{ Normalmente este archivo no se modifica y se trabajan con las unidades. }

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  {
    Pasa la referencia de la clase y
    la variables que la va a instanciar (viene de la unidad).
  }
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
