program Programa;

{$APPTYPE CONSOLE}

{
  A diferencia de un procedimiento,
  las funciones retornan obligatoriamente un valor.
  "Result" es una palabra reservada para retornar un valor.
}
function RetornarArea(lado: Integer): Integer;
begin
  Result := lado * lado;
end;

var
  lado: Integer;
  area: Integer;

begin
  Write('Ingresa el lado del cuadrado: ');
  ReadLn(lado);

  area := RetornarArea(lado);

  WriteLn('El área del cuadrado es: ', area);
  ReadLn;
end.
