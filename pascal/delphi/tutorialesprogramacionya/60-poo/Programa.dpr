program Programa;

{$APPTYPE CONSOLE}

type
  TPersona = class
    Nombre: string;
    Edad: Integer;
    procedure Cargar;
    procedure Imprimir;
    procedure EsMayorDeEdad;
  end;

{ Carga la información de una persona. }
procedure TPersona.Cargar;
begin
  Write('Ingresa el nombre de la persona: ');
  ReadLn(Nombre);

  Write('Ingresa su edad: ');
  ReadLn(Edad);
end;

{ Imprime la información de una persona. }
procedure TPersona.Imprimir;
begin
  WriteLn('=> Datos de la persona');
  WriteLn('Nombre: ', Nombre);
  WriteLn('Edad: ', Edad);
end;

{ Comprueba si la persona es mayor de edad. }
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

var
  Persona1: TPersona;
  Persona2: TPersona;

begin
  { Crea una instancia de la clase. }
  Persona1 := TPersona.Create;

  Persona1.Cargar;
  Persona1.Imprimir;
  Persona1.EsMayorDeEdad;
  Persona1.Free;

  { Crea otra instancia de la clase. }
  Persona2 := TPersona.Create;

  Persona2.Cargar;
  Persona2.Imprimir;
  Persona2.EsMayorDeEdad;
  Persona2.Free;

  ReadLn;
end.
