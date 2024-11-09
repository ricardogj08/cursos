program Programa;

{$APPTYPE CONSOLE}

type
  { Definición de métodos y atributos de la clase. }
  TPersona = class
    Nombre: string;
    Edad: Integer;
    procedure Cargar;
    procedure Imprimir;
    procedure EsMayorDeEdad;
  end;

{
  Implementación del método de la clase.
  Se pueden acceder a los atributos desde los m�todos.
  Carga la información de una persona.
}
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
{
  Se puede omitir el begin-end cuando existe una
  sola instrucción en versiones futuras de Delphi.
}
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
  Persona: TPersona;

begin
  { Crea una instancia de la clase. }
  Persona := TPersona.Create;

  Persona.Cargar;
  Persona.Imprimir;
  Persona.EsMayorDeEdad;
  Persona.Free; { Libera espacio en memoria. }

  ReadLn;
end.
