program Programa;

{$APPTYPE CONSOLE}

type
  TVector = array[1..5] of Integer;

{ Carga los elementos de un vector. }
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

{ Suma los elementos de un vector. }
function SumarElementos(Vector: TVector): Integer;
var
  i: Integer;
  suma: Integer;
begin
  suma := 0;

  for i := 1 to 5 do
  begin
    suma := suma + Vector[i];
  end;

  Result := suma;
end;

var
  Vector: TVector;

begin
  Cargar(Vector);
  Write('La suma de todos los elementos es: ', SumarElementos(Vector));
  ReadLn;
end.
