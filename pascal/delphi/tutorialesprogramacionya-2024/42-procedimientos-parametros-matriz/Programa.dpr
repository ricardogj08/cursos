program Programa;

{$APPTYPE CONSOLE}

type
  TMatriz = array[1..4, 1..4] of Integer;

{ Carga los elementos de la matriz. }
procedure Cargar(var Matriz: TMatriz);
var
  x, y: Integer;
begin
  for x := 1 to 4 do
  begin
    for y := 1 to 4 do
    begin
      Write('Ingresa el valor del elemento [', x, '][', y, ']: ');
      ReadLn(Matriz[x, y]);
    end;
  end;
end;

{ Imprime los elementos de la matriz. }
procedure Imprimir(Matriz: TMatriz);
var
  i: Integer;
begin
  WriteLn('Elementos de ls diagonal principal');
  for i := 1 to 4 do
  begin
    Write(Matriz[i, i], '-');
  end;
end;

var
  Matriz: TMatriz;

begin
  Cargar(Matriz);
  Imprimir(Matriz);
  ReadLn;
end.
