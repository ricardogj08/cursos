program Programa;

{$APPTYPE CONSOLE}

var
  aprobados: Integer;
  reprobados: Integer;
  f: Integer;
  nota: Integer;

begin
  aprobados := 0;
  reprobados := 0;

  for f := 1 to 10 do
  begin
    Write('Ingresa la calificación de la nota: ');
    ReadLn(nota);

    if nota >= 7 then
    begin
      aprobados := aprobados + 1;
    end
    else
    begin
      reprobados := reprobados + 1;
    end;
  end;

  WriteLn;
  WriteLn;
  WriteLn('Cantidad de alumnos aprobados: ', aprobados);
  WriteLn('Cantidad de alumnos reprobados: ', reprobados);
  ReadLn;
end.
