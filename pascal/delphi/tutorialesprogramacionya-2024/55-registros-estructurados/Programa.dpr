program Programa;

{$APPTYPE CONSOLE}

type
  TSueldos = array[1..3] of Double;

  TEmpleado = record
    Nombre: String;
    Sueldos: TSueldos;
  end;

{ Carga los sueldos de los empleados. }
procedure Cargar(var Empleado: TEmpleado);
var
 i: Integer;
begin
  Write('Ingresa el nombre del empleado: ');
  ReadLn(Empleado.nombre);

  for i := 1 to 3 do
  begin
    Write('Ingresa el sueldo [', i, ']: ');
    ReadLn(Empleado.Sueldos[i]);
  end;
end;

{ Calcula la suma total de sueldos de un empleado. }
procedure SueldoTotal(Empleado: TEmpleado);
var
  suma: Double;
  i: Integer;
begin
  suma := 0;

  for i := 1 to 3 do
  begin
    suma := suma + Empleado.Sueldos[i];
  end;

  WriteLn('El total de sueldos de los últimos tres meses de "', Empleado.Nombre, '" es de: ', suma:0:2);
end;

var
  Empleado: TEmpleado;

begin
  Cargar(Empleado);
  SueldoTotal(Empleado);
  ReadLn;
end.

