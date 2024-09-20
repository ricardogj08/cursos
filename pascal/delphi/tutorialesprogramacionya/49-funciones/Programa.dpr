program Programa;

{$APPTYPE CONSOLE}

function RetornarMayor(v1, v2: Integer): Integer;
begin
  if v1 > v2 then
  begin
    Result := v1;
  end
  else
  begin
    Result := v2;
  end;
end;

var
  valor1: Integer;
  valor2: Integer;

begin
  Write('Ingresa el primer valor: ');
  ReadLn(valor1);

  Write('Ingresa el segundo valor: ');
  ReadLn(valor2);

  Write('El valor mayor es: ', RetornarMayor(valor1, valor2));
  ReadLn;
end.
