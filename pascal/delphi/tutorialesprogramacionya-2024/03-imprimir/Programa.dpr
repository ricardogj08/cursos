program Programa;

{$APPTYPE CONSOLE}

var
  num1, num2: Integer;
  suma, producto: Integer;

begin
  Write('Ingrese el primer valor: ');
  ReadLn(num1);

  Write('Ingresa el segundo valor: ');
  ReadLn(num2);

  suma := num1 + num2;
  producto := num1 * num2;

  { Imprime con salto de línea. }
  WriteLn('La suma de los dos números es: ', suma);
  WriteLn('El productos de los números es: ', producto);
  ReadLn;
end.
