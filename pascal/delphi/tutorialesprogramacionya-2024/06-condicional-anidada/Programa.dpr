program Programa;

{$APPTYPE CONSOLE}

var
  nota1, nota2, nota3: Integer;
  promedio: Double;

begin
  Write('Ingrese la primera nota: ');
  ReadLn(nota1);

  Write('Ingrese la segunda nota: ');
  ReadLn(nota2);

  Write('Ingrese la tercer nota: ');
  ReadLn(nota3);

  promedio := (nota1 + nota2 + nota3) / 3;

  WriteLn('=> Promedio: ', promedio:0:2);

  if promedio >= 7 then
  begin
    Write('Excelente');
  end
  else
  begin
    if promedio >= 4 then
    begin
      Write('Regular');
    end
    else
    begin
      write('Reprobado');
    end;
  end;

  {
    if promedio >= 7 then
    begin
      Write('Excelente');
    end
    else if promedio >= 4 then
    begin
      Write('Regular');
    end
    else
    begin
      write('Reprobado');
    end;
  }

  ReadLn;
end.
