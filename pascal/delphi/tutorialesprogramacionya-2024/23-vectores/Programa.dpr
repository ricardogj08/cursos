program Programa;

{$APPTYPE CONSOLE}

type
  TSueldos = array[1..4] of Double;

var
  SueldoManiana: TSueldos;
  SueldoTarde: TSueldos;
  f: Integer;
  gastoManiana: Double;
  gastoTarde: Double;

begin
  WriteLn('Sueldos del turno de la mañana: ');

  for f := 1 to 4 do
  begin
    Write('Ingrese sueldo: ');
    ReadLn(SueldoManiana[f]);
  end;

  WriteLn;
  WriteLn('Sueldos del turno de la tarde');

  for f := 1 to 4 do
  begin
    Write('Ingrese el sueldo: ');
    ReadLn(SueldoTarde[f]);
  end;

  gastoManiana := 0;
  gastoTarde := 0;

  for f := 1 to 4 do
  begin
    gastoManiana := gastoManiana + SueldoManiana[f];
    gastoTarde := gastoTarde + SueldoTarde[f];
  end;

  WriteLn;
  WriteLn('Sueldo total de la mañana: ', gastoManiana:0:2);
  WriteLn('Sueldo total de la tarde: ', gastoTarde:0:2);
  ReadLn;
end.
