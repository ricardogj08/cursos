program Programa;

{$APPTYPE CONSOLE}

type
  TAlturas = array[1..5] of Double;

var
  Alturas: TAlturas;
  f: Integer;
  suma: Double;
  promedio: Double;
  cantidad1, cantidad2: Integer;

begin
  suma := 0;

  for f := 1 to 5 do
  begin
    write('Ingresa la altura: ');
    ReadLn(Alturas[f]);
    suma := suma + Alturas[f];
  end;

  cantidad1 := 0;
  cantidad2 := 0;

  promedio := suma / 5;

  for f := 1 to 5 do
  begin
    if Alturas[f] > promedio then
    begin
      cantidad1 := cantidad1 + 1;
    end
    else if Alturas[f] < promedio then
    begin
      cantidad2 := cantidad2 + 1;
    end;
  end;

  WriteLn;
  WriteLn('Promedio: ', promedio:0:2);
  WriteLn('La cantidad de personas más altas que el promedio son: ', cantidad1);
  WriteLn('La cantidad de personas más bajas que el promedio son: ', cantidad2);
  ReadLn;
end.
