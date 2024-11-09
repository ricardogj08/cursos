program Programa;

{$APPTYPE CONSOLE}

type
  TSueldos = array[1..5] of Double;

var
  sueldos: TSueldos;
  f: Integer;
  k: Integer;
  aux: Double;

begin
  WriteLn('Carga de sueldos');

  for f := 1 to 5 do
  begin
    Write('Ingresa un sueldo: ');
    ReadLn(sueldos[f]);
  end;

  for k := 1 to 4 do
  begin
    for f := 1 to 5 - k do
    begin
      if sueldos[f] > sueldos[f + 1] then
      begin
        aux := sueldos[f];
        sueldos[f] := sueldos[f + 1];
        sueldos[f + 1] := aux;
      end;
    end;
  end;

  WriteLn;
  WriteLn('Listado de sueldos ordenados de menor a mayor: ');

  for f := 1 to 5 do
  begin
    Write(sueldos[f]:0:2, ' ');
  end;

  ReadLn;
end.
