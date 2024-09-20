program Programa;

{$APPTYPE CONSOLE}

type
  TMatriz = array[1..4, 1..4] of Integer;

var
  Matriz: TMatriz;
  x, y, i: Integer;

begin
  for x := 1 to 4 do
  begin
    for y := 1 to 4 do
    begin
      Write('Ingresa el valor del elemento [', x, '][', y, ']: ');
      ReadLn(Matriz[x, y]);
    end;
  end;

  WriteLn('Elementos de la diagonal principal');

  for i := 1 to 4 do
  begin
    Write(Matriz[i, i], '-');
  end;

  ReadLn;
end.
