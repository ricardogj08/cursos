program Programa;

{$APPTYPE CONSOLE}

uses
  UnitVectores in 'UnitVectores.pas';

var
  Vector1: TVector;
  Vector2: TVector;

begin
  WriteLn('Carga los elementos del primer Vector');
  Cargar(Vector1);

  WriteLn('Carga los elementos del segundo Vector');
  Cargar(Vector2);

  WriteLn('Datos del primer vector');
  Imprimir(Vector1);

  WriteLn('Datos del segundo vector');
  Imprimir(Vector2);

  ReadLn
end.
