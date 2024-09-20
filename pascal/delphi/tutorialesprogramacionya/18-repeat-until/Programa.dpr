program Programa;

{$APPTYPE CONSOLE}

var
  suma: Integer;
  cantidad: Integer;
  valor: Integer;
  promedio: Double;

begin
  suma := 0;
  cantidad := 0;

  repeat
    Write('Ingrese valor: ');
    ReadLn(valor);

    if valor <> 0 then
    begin
      suma := suma + valor;
      cantidad := cantidad + 1;
    end;
  until valor = 0;

  if cantidad <> 0 then
  begin
    promedio := suma / cantidad;
    Write('El promedio es: ', promedio:0:2);
  end
  else
  begin
    write('No se registraron valores');
  end;

  ReadLn;
end.
