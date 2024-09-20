program Programa;

{$APPTYPE CONSOLE}

type
  TMatriz = array[1..3, 1..5] of Integer;

var
  matriz: TMatriz;
  x, y: Integer;

begin
  for x := 1 to 3 do
  begin
    for y := 1 to 5 do
    begin
      Write('Ingresa el valor para el elemento [', x, '][', y, ']: ');
      ReadLn(matriz[x, y]);
    end;
  end;

  WriteLn('Listado completo de la matriz');

  for x := 1 to 3 do
  begin
    for y := 1 to 5 do
    begin
      write(matriz[x, y], ' ');
    end;

    WriteLn;
  end;

  ReadLn;
end.
