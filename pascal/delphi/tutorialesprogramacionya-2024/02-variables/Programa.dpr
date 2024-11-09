{ Nombre del programa. }
program Programa;

{
  Directiva que le indica al compilador de Delphi
  que es una aplicación de consola.
}
{$APPTYPE CONSOLE}

{ Zona de declaración de variables. }
var
  horasTrabajadas: Integer;
  costoHora: Double;
  sueldo: Double;

{ Inicia un bloque de flujo. }
begin
  { Imprime en consola un mensaje. }
  Write('Ingrese la cantidad de horas trabajadas: ');
  readLn(horasTrabajadas); { Lee desde la entrada del teclado. }

  Write('Ingrese el costo por hora ($): ');
  ReadLn(costoHora);

  { Calcula el sueldo del trabajador. }
  sueldo := horasTrabajadas * costoHora;

  Write('El sueldo del trabajador es de ($): ');
  Write(sueldo:0:2); { Imprime solo con 2 decimales. }
  ReadLn;
end.
