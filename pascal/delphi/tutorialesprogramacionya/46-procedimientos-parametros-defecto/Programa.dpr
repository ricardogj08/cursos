program Programa;

{$APPTYPE CONSOLE}

{ Definición de un procedimiento con parámetros por defecto. }
procedure Sumar(x1: Integer; x2: Integer; x3: Integer = 0; x4: Integer = 0);
var
  suma: Integer;
begin
  suma := x1 + x2 + x3 + x4;
  WriteLn('La suma es: ', suma);
end;

begin
  WriteLn('La suma de 10 + 2: ');
  Sumar(10, 2);

  WriteLn('La suma de 7 + 2 + 60: ');
  Sumar(7, 2, 60);

  WriteLn('La suma de 1 + 2 + 3 + 4: ');
  Sumar(1, 2, 3, 4);
  
  ReadLn;
end.
