program Programa;

{$APPTYPE CONSOLE}

type
  TVector = array[1..5] of Integer;

{ Carga los elementos del vector. }
procedure Cargar(var Vector: TVector);
var
  i: Integer;
begin
  for i := 1 to 5 do
  begin
    Write('Ingresa el valor del elemento [', i, ']: ');
    ReadLn(Vector[i]);
  end;
end;

{ Imprime los elementos del vector. }
procedure Imprimir(Vector: TVector);
var
  i: Integer;
begin
  WriteLn('Listado completo del vector:');

  for i := 1 to 5 do
  begin
    Write(Vector[i], ' ');
  end;
end;

var
  Vector: TVector;

begin
  Cargar(Vector);
  Imprimir(Vector);
  ReadLn;
end.
