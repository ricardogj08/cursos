program Programa;

{$APPTYPE CONSOLE}

var
  cantidad1, cantidad2, cantidad3: Integer;
  suma: Integer;
  peso: Integer;

begin
  cantidad1 := 0;
  cantidad2 := 0;
  cantidad3 := 0;

  repeat
    Write('Ingresa el peso: ');
    ReadLn(peso);

    if peso > 102 then
    begin
      cantidad1 := cantidad1 + 1;
    end
    else if peso >= 98 then
    begin
      cantidad2 := cantidad2 + 1;
    end
    else if peso > 0 then
    begin
      cantidad3 := cantidad3 + 1;
    end;
  until peso = 0;

  suma := cantidad1 + cantidad2 + cantidad3;

  WriteLn('Piezas con peso superior a 102 gr.: ', cantidad1);
  WriteLn('Piezas con peso superior o igual a 98 gr. y menor o igual a 102 gr.: ', cantidad2);
  WriteLn('Piezas con peso superior a 98 gr.: ', cantidad3);

  WriteLn;
  Write('Cantidad de piezas procesadas: ', suma);
  ReadLn;
end.
