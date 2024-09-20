program Programa;

{$APPTYPE CONSOLE}

{ Definición de un procedimiento sobrecargado. }
procedure MostrarMayor(x1, x2: Integer); overload;
begin
  if x1 > x2 then
  begin
    WriteLn('Mayor: ', x1);
  end
  else
  begin
    WriteLn('Mayor: ', x2);
  end;
end;

procedure MostrarMayor(x1, x2: Double); overload;
begin
  if x1 > x2 then
  begin
    WriteLn('Mayor: ', x1:0:2);
  end
  else
  begin
    WriteLn('Mayor: ', x2:0:2);
  end;
end;

var
  valor1, valor2: Integer;
  valor3, valor4: Double;

begin
  write('Ingresa el primer entero: ');
  ReadLn(valor1);

  write('Ingresa el segundo entero: ');
  ReadLn(valor2);

  MostrarMayor(valor1, valor2);

  Write('Ingresa el primer valor flotante: ');
  ReadLn(valor3);

  Write('Ingresa el segundo valor flotante: ');
  ReadLn(valor4);

  MostrarMayor(valor3, valor4);

  ReadLn;
end.
