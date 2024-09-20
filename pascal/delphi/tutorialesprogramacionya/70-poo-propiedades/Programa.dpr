program Programa;

{$APPTYPE CONSOLE}

type
  TPersona = class
    private
      Nombre: string;
      FEdad: Integer;
      procedure FijarEdad(Edad: Integer);
    public
      constructor Create(nombre: String; edad: Integer);
      procedure Imprimir;
      procedure EsMayorDeEdad;
      { Asocia un campo a una propiedad. }
      { La propiedad lee el campo "FEdad". }
      { Y cuando se realiza la acción de asignación llama al método "FijarEdad". }
      property Edad: Integer read FEdad write FijarEdad;
  end;

{ Constructor de la clase "TPersona". }
constructor TPersona.Create(nombre: string; edad: Integer);
begin
  Self.Nombre := nombre;
  Self.Edad := edad;
end;

{ Imprime la información de la persona. }
procedure TPersona.Imprimir;
begin
  WriteLn('* Nombre: ', Nombre);
  WriteLn('* Edad: ', Edad);
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

{ Establece la edad de una persona. }
procedure TPersona.FijarEdad(edad: Integer);
begin
  if edad >= 0 then
  begin
    self.FEdad := edad;
  end
  else
  begin
    Self.FEdad := 0;
  end;
end;

var
  Persona: TPersona;

begin
  Persona := TPersona.Create('José', 23);

  Persona.Imprimir;
  Persona.EsMayorDeEdad;
  Persona.Edad := 24;
  Persona.Imprimir;
  Persona.Free;

  ReadLn;
end.
