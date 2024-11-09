program Programa;

{$APPTYPE CONSOLE}

var
  sueldo: Double;

begin
  Write('Ingrese el sueldo: ');
  ReadLn(sueldo);

  if sueldo > 300 then
  { Inicia el bloque de flujo de la condición. }
  begin
      Write('Esta persona debe abonar impuestos!!');
  end;

  ReadLn;
end.
