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
    Write('Ingrese el valor del elemento [', i, ']: ');
    ReadLn(Vector[i]);
  end;
end;

{ Suma los elementos de un vector. }
function SumarVectores(Vector1, Vector2: TVector): TVector;
var
  i: Integer;
  Suma: TVector;
begin
  for i := 1 to 5 do
  begin
    Suma[i] := Vector1[i] + Vector2[i];
  end;

  Result := Suma;      
end;

{ Imprime los elementos de un vector. }
procedure Imprimir(Vector: TVector);
var
  i: Integer;
begin
  for i := 1 to 5 do
  begin
    Write(Vector[i], ' ');
  end;
end;

var
  Vector1: TVector;
  Vector2: TVector;
  VectorSuma: TVector;

begin
  Cargar(Vector1);
  Cargar(Vector2);

  VectorSuma := SumarVectores(Vector1, Vector2);

  Imprimir(VectorSuma);

  ReadLn;
end.
