program Programa;

{$APPTYPE CONSOLE}

type
  TEmpleados = array[1..4] of String;
  TSueldos = array[1..4, 1..3] of Double;
  TSueldosTotales = array[1..4] of Double;

var
  Empleados: TEmpleados;
  Sueldos: TSueldos;
  SueldosTotales: TSueldosTotales;
  x, y: Integer;
  suma: Double;
  mayorSueldo: Double;
  empleado: String;

begin
  for x := 1 to 4 do
  begin
    Write('Ingresa el nombre del empleado: ');
    ReadLn(Empleados[x]);

    for y := 1 to 3 do
    begin
      Write('Ingresa sueldo: ');
      ReadLn(Sueldos[x, y]);
    end;
  end;

  for x := 1 to 4 do
  begin
    suma := 0;

    for y := 1 to 3 do
    begin
      suma := suma + Sueldos[x, y];
    end;

    SueldosTotales[x] := suma;
  end;

  mayorSueldo := SueldosTotales[1];
  empleado := Empleados[1];

  for x := 2 to 4 do
  begin
    if SueldosTotales[X] > mayorSueldo then
    begin
      mayorSueldo := SueldosTotales[x];
      empleado := Empleados[x];
    end;
  end;

  WriteLn('El empleado con mayor sueldo es: ', empleado);
  WriteLn('Sueldo ($): ', mayorSueldo:0:2);
  ReadLn;
end.
