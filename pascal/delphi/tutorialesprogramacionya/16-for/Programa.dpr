program Programa;

{$APPTYPE CONSOLE}

var
 f: Integer;
 cantidad: Integer;
 n: Integer;
 valor: Integer;

begin
  cantidad := 0;

  Write('Ingrese cuantos números quiere cargar: ');
  ReadLn(n);

  for f := 1 to n do
  begin
    write('Ingrese un valor: ');
    ReadLn(valor);

    if valor >= 1000 then
    begin
      cantidad := cantidad + 1;
    end;
  end;

  WriteLn;
  Write('La cantidad de valores mayores a 1000 son: ', cantidad);
  ReadLn;
end.
