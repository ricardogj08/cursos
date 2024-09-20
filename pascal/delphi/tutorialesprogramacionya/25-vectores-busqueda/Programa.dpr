program Programa;

{$APPTYPE CONSOLE}

type
  TNombres = array[1..5] of String;
  TSueldos = array[1..5] of Double;

var
  Nombres: TNombres;
  Sueldos: TSueldos;
  f: Integer;
  mayor: Double;
  posicion: Integer;

begin
  for f := 1 to 5 do
  begin
    Write('Ingresa el nombre: ');
    ReadLn(Nombres[f]);
    Write('Ingresa el sueldo: ');
    ReadLn(Sueldos[f]);
    WriteLn;
  end;

  mayor := Sueldos[1];
  posicion := 1;

  for f := 2 to 5 do
  begin
    if Sueldos[f] > mayor then
    begin
      mayor := Sueldos[f];
      posicion := f;
    end;
  end;

  WriteLn('El sueldo mayor es: ', mayor:0:2);
  WriteLn('Operador: ', Nombres[posicion]);
  ReadLn;
end.
