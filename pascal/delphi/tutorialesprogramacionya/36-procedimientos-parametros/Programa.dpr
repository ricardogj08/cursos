program Programa;

{$APPTYPE CONSOLE}

{ Procedimiento con parámetros. }
procedure MostrarMayor(v1: Integer; v2: Integer; v3: Integer);
begin
  write('El valor mayor de los tres números es: ');

  if (v1 > v2) and (v1 > v3) then
  begin
    Write(v1);
  end
  else if v2 > v3 then
  begin
      Write(v2);
  end
  else
  begin
    Write(v3);
  end;
end;

var
  valor1: Integer;
  valor2: Integer;
  valor3: Integer;

begin
  Write('Ingresa el primer valor: ');
  ReadLn(valor1);

  Write('Ingresa el segundo valor: ');
  ReadLn(valor2);

  write('Ingresa el tercer valor: ');
  ReadLn(valor3);

  MostrarMayor(valor1, valor2, valor3);

  ReadLn;
end.
