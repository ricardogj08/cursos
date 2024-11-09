program Programa;

{$APPTYPE CONSOLE}

var
  num1, num2: Integer;

{
  Operadores relacionales:
    > (mayor que)
    < (menor que)
    >= (mayor o igual que)
    <= (menor o igual que)
    = (igual que)
    <> (distinto de)

  Operadores matemáticos:
    + (más)
    - (menos)
    div (división de variables Integer)
    / (división de variables Double)
    mod (resto de una división)
}
begin
  Write('Ingresa el primer valor: ');
  ReadLn(num1);

  Write('Ingresa el segundo valor: ');
  ReadLn(num2);

  if num1 > num2 then
  begin
    Write('El número mayor es: ', num1);
  end
  else
  begin
      Write('El número mayor es: ', num2);
  end;

   ReadLn;
end.
