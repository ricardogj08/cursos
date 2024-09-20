program Programa;

{$APPTYPE CONSOLE}

type
  TVector = array[1..7] of Integer;

{ Carga los elementos de un vector. }
procedure Cargar(var Vector: TVector);
var
  i: Integer;
begin
  for i := 1 to 7 do
  begin
    Write('Ingresa el valor del elemento [', i, ']: ');
    ReadLn(Vector[i]);
  end;
end;

{ Suma los elementos de un vector. }
procedure SumarElementos(Vector: TVector);
var
  i: Integer;
  suma: Integer;
begin
  suma := 0;

  for i := 1 to 7 do
  begin
    suma := suma + Vector[i];
  end;

  WriteLn('Suma de los elementos del vector: ', suma);
end;

var
  Vector1: TVector;
  Vector2: TVector;

begin
  Cargar(Vector1);
  SumarElementos(Vector1);

  Cargar(Vector2);
  SumarElementos(Vector2);

  ReadLn;
end.
