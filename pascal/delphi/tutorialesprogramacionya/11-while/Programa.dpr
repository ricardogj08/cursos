program Programa;

{$APPTYPE CONSOLE}

var
  x, suma, valor, promedio: Integer;

begin
  x := 1;
  suma := 0;

  while x <= 10 do
  begin
    Write('Ingrese un valor: ');
    ReadLn(valor);

    suma := suma + valor;
    x := x + 1;
  end;

  promedio := suma div 10;

  WriteLn('La suma de los 10 valores es: ', suma);
  write('El promedio de los 10 valores es: ', promedio);

  ReadLn;
end.
