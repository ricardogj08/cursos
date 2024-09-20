program Programa;

{$APPTYPE CONSOLE}

type
  TNombres = array[1..5] of String;
  TNotas = array[1..5] of Integer;

var
  Nombres: TNombres;
  Notas: TNotas;
  f: Integer;
  nombreToSearch: String;
  posicion: Integer;

begin
  for f := 1 to 5 do
  begin
    Write('Ingresa el nombre del alumno: ');
    ReadLn(Nombres[f]);
    write('Ingresa su calificación: ');
    ReadLn(Notas[f]);
    WriteLn;
  end;

  Write('Ingresa el nombre del alumno que deseas consultar: ');
  ReadLn(nombreToSearch);

  posicion := -1;

  for f := 1 to 5 do
  begin
    if nombreToSearch = Nombres[f] then
    begin
      posicion := f;
    end;
  end;

  if posicion <> -1 then
  begin
    WriteLn('Calificación: ', Notas[posicion]);
  end
  else
  begin
      WriteLn('No existe el alumno');
  end;

  ReadLn;
end.
