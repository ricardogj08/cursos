program Programa;

{$APPTYPE CONSOLE}

type
  TNombres = array[1..5] of String;
  TEdades = array[1..5] of Integer;

var
  Nombres: TNombres;
  Edades: TEdades;
  f: Integer;

begin
  for f := 1 to 5 do
  begin
    Write('Ingresa el nombre: ');
    ReadLn(Nombres[f]);

    Write('Ingresa la edad: ');
    ReadLn(Edades[f]);

    WriteLn;
  end;

  WriteLn('Personas mayores de edad');
  WriteLn('------------------------');

  for f := 1 to 5 do
  begin
    if Edades[f] >= 21 then
    begin
      WriteLn(Nombres[f]);
    end;
  end;

  ReadLn;
end.
