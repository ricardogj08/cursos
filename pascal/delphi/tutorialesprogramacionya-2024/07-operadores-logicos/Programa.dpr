program Programa;

{$APPTYPE CONSOLE}

var
  num1, num2, num3: Integer;

begin
  Write('Ingresa el primer número: ');
  ReadLn(num1);

  write('Ingresa el segundo número: ');
  ReadLn(num2);

  Write('Ingresa el tercer número: ');
  ReadLn(num3);

  if (num1 > num2) and (num1 > num3) then
  begin
    Write('El número mayor es: ', num1);
  end
  else if num2 > num3 then
  begin
    Write('El número mayor es: ', num2);
  end
  else
  begin
    Write('El número mayor es: ', num3);
  end;

  ReadLn;
end.

