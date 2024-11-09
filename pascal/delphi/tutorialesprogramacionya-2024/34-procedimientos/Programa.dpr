program Programa;

{$APPTYPE CONSOLE}

procedure RealizarSuma;
var
  valor1: Integer;
  valor2: Integer;
  suma: Integer;
begin
  Write('Ingresa el primer valor: ' );
  ReadLn(valor1);

  Write('Ingresa el segundo valor: ' );
  ReadLn(valor2);

  suma := valor1 + valor2;

  WriteLn('La suma de los dos valores es: ', suma);
end;

procedure Separacion;
begin
  WriteLn('********************************');
end;

var
  i: Integer;

{ Bloque principal del programa. }
begin
  for i := 1 to 5 do
  begin
    RealizarSuma;
    Separacion;
  end;

  ReadLn;
end.
