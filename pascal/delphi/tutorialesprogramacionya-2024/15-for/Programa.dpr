program Programa;

{$APPTYPE CONSOLE}

var
  multiplo3, multiplo5: Integer;
  f: Integer;
  valor: Integer;

begin
  multiplo3 := 0;
  multiplo5 := 0;

  for f := 1 to 10 do
  begin
    Write('Ingresa un valor: ');
    ReadLn(valor);

    if valor mod 3 = 0 then
    begin
        multiplo3 := multiplo3 + 1;
    end
    else if valor mod 5 = 0 then
    begin
        multiplo5 := multiplo5 + 1;
    end;
  end;

  WriteLn;
  WriteLn('Cantidad de múltiplos de 3: ', multiplo3);
  WriteLn('Cantidad de múltiplos de 5: ', multiplo5);
  ReadLn;
end.
