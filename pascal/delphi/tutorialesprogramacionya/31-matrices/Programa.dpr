program Programa;

{$APPTYPE CONSOLE}

type
  TMatriz = array[1..3, 1..4] of Integer;

var
  Matriz: TMatriz;
  x, y: Integer;

begin
  for x := 1 to 3 do
  begin
    for y := 1 to 4 do
    begin
      Write('Ingrese el valor del elemento de la matriz [', x, '][', y, ']: ');
      ReadLn(Matriz[x, y]);
    end;
  end;

  Write('Primer fila de la matriz');

  for y := 1 to 4 do
  begin
    write(Matriz[1, y]:6); { Muestra solo 6 dígitos }
  end;

  WriteLn;
  Write('Última fila de la matriz:');

  for y := 1 to 4 do
  begin
    Write(Matriz[3, y]:6);
  end;

  WriteLn;
  Write('Primera columna de la matriz:');

  for x := 1 to 3 do
  begin
    Write(Matriz[x, 1]:6);
  end;

  ReadLn;
end.
