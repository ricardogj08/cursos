program Programa;

{$APPTYPE CONSOLE}

var
  f, suma, valor: Integer;
  promedio: Double;

begin
  suma := 0;

  for f := 1 to 10 do
  begin
    write('Ingrese un valor: ');
    ReadLn(valor);
    suma := suma + valor;
  end;

  promedio := suma / 10;

  WriteLn('La suma es: ', suma);
  WriteLn('El promedio es: ', promedio:0:2);

  ReadLn;
end.
