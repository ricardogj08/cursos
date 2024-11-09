program Programa;

{$APPTYPE CONSOLE}

type
  TPersona = class
    Nombre: String;
    Edad: Integer;
    procedure Cargar;
    procedure Imprimir;
    procedure EsMayorDeEdad;
  end;

  { Aplica herencia a la clase. }
  TEmpleado = class(TPersona)
    Salario: Double;
    procedure Cargar;
    procedure Imprimir;
    procedure PagaImpuestos;
  end;

{ Carga la información de una persona. }
procedure TPersona.Cargar;
begin
  Write('Ingresa su nombre: ');
  ReadLn(Nombre);

  Write('Ingresa su edad: ');
  ReadLn(Edad);
end;

{ Imprime la información de una persona. }
procedure TPersona.Imprimir;
begin
  WriteLn('Nombre: ', nombre);
  WriteLn('Edad: ', Edad);
end;

{ Comprueba si una persona es mayor de edad. }
procedure TPersona.EsMayorDeEdad;
begin
  if Edad >= 18 then
  begin
    WriteLn('Es mayor de edad');
  end
  else
  begin
    WriteLn('No es mayor de edad');
  end;
end;

{ Carga el salario de un empleado (persona). }
procedure TEmpleado.Cargar;
begin
  { LLama al método padre de la clase. }
  inherited Cargar;

  Write('Ingresa su salario: ');
  ReadLn(Salario);
end;

{ Imprime el salario de un empleado (persona). }
procedure TEmpleado.Imprimir;
begin
  { LLama al método padre de la clase. }
  inherited Imprimir;

  WriteLn('Salario: ', Salario:0:2);
end;

{ Comprueba si un empleado debe pagar impuestos (persona). }
procedure TEmpleado.PagaImpuestos;
begin
  if Salario > 3000 then
  begin
    Write('El empleado ', Nombre, ' debe pagar impuestos');
  end
  else
  begin
    WriteLn('El empleado, ', Nombre, ' no debe pagar impuestos');
  end;
end;

var
  Persona1: TPersona;
  Empleado1: TEmpleado;

begin
  Persona1 := TPersona.Create;

  WriteLn('=> Datos de la persona');
  Persona1.Cargar;
  Persona1.Imprimir;
  Persona1.EsMayorDeEdad;
  Persona1.Free;

  Empleado1 := TEmpleado.Create;

  WriteLn('=> Datos del empleado');
  Empleado1.Cargar;
  Empleado1.Imprimir;
  Empleado1.EsMayorDeEdad;
  Empleado1.PagaImpuestos;
  Empleado1.Free;

  ReadLn;
end.
