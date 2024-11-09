program Programa;

{$APPTYPE CONSOLE}

procedure SumarRestar(v1, v2: Integer; var suma, producto: Integer);
begin
  suma := v1 + v2;
  producto := v1 * v2;
end;

var
  valor1: Integer;
  valor2: Integer;
  suma: Integer;
  producto: Integer;

begin
  Write('Ingresa el primer valor: ');
  ReadLn(valor1);

  Write('Ingresa el segundo valor: ');
  ReadLn(valor2);

  SumarRestar(valor1, valor2, suma, producto);

  WriteLn('La suma de los dos valores es: ', suma);
  WriteLn('El producto de los dos valores es: ', producto);

  ReadLn;
end.
