program Programa;

{$APPTYPE CONSOLE}

var
  valor: Integer;

begin
  repeat
    write('Ingrese un valor entre 0 y 999 - (Cero para finalizar): ');
    ReadLn(valor);

    if valor >= 100 then
    begin
      WriteLn('El número tiene 3 dígitos');
    end
    else if valor >= 10 then
    begin
      WriteLn('El número tiene 2 dígitos');
    end
    else
    begin
      WriteLn('El número tiene 1 dígito');
  end;
  until valor = 0; { Termina el bucle cuando cumple con la condición }

  Write('Fin del programa');
  ReadLn;
end.
