program Programa;

{$APPTYPE CONSOLE}

type
  TAlumnos = array[1..5] of String;
  TNotas = array[1..5] of Integer;

var
  Alumnos: TAlumnos;
  Notas: TNotas;
  i, j: Integer;
  auxNota: Integer;
  auxAlumno: String;

begin
  for i := 1 to 5 do
    begin
      Write('Ingresa el nombre del alumno: ');
      ReadLn(Alumnos[i]);
      Write('Ingresa su calificación: ');
      ReadLn(Notas[i]);
      WriteLn;
    end;

  for i := 1 to 4 do
  begin
    for j := 1 to 5 - i do
    begin
      if Notas[j] < Notas[j + 1] then
      begin
        auxNota := Notas[j];
        Notas[j] := Notas[j + 1];
        Notas[j + 1] := auxNota;

        auxAlumno := Alumnos[j];
        Alumnos[j] := Alumnos[j + 1];
        Alumnos[j + 1] := auxAlumno;
      end;
    end;
  end;

  WriteLn('Lista de calificaciones ordenadas de mayor a menor');

  for i := 1 to 5 do
  begin
    WriteLn(Alumnos[i], ' ', Notas[i]);
  end;

  ReadLn;
end.
