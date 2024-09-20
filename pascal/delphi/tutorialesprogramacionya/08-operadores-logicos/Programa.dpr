program Programa;

{$APPTYPE CONSOLE}

var
  dia, mes, anio: Integer;

begin
  write('Ingresa el número de día: ');
  ReadLn(dia);

  write('Ingresa el número de mes: ');
  ReadLn(mes);

  write('Ingresa el número de año: ');
  ReadLn(anio);

  if (mes = 1) or (mes = 2) or (mes = 3) then
  begin
    Write('Corresponde al primer trimestre');
  end;

  ReadLn;
end.
