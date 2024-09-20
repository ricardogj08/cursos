program Programa;

{$APPTYPE CONSOLE}

{
  Los vectores en Pascal son similares a los arrays.
  "type" es la zona para definir los tipos datos de vectores a utilizar.
}
type
  TSueldos = array[1..5] of Integer;

var
  Sueldos: TSueldos; { Utiliza el tipo de dato de vector definido. }
  f: Integer;

begin
  for f := 1 to 5 do
  begin
    Write('Ingresa sueldo [', f, ']: ');
    ReadLn(Sueldos[f]);
  end;

  WriteLn('Los sueldos que paga la empresa son: ');

  for f := 1 to 5 do
  begin
    Write(Sueldos[f], '-');
  end;

  ReadLn;
end.
