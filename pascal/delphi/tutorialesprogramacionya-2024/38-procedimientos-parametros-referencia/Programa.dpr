program Programa;

{$APPTYPE CONSOLE}

procedure procedimientoSinReferencia(x: Integer);
begin
  WriteLn('Parámetro recibido con valor: ', x);
  x := 100;
end;

{ Procedimiento con parámetro con referencia. }
procedure procedimientoConReferencia(var x: Integer);
begin
  WriteLn('Parámetro recibido por referencia: ', x);
  x := 100;
end;

var
  valor: Integer;

begin
  valor := 1;

  procedimientoSinReferencia(valor);
  WriteLn('El contenido de la variable es: ', valor);

  procedimientoConReferencia(valor);
  WriteLn('El contenido de la variable es: ', valor);

  ReadLn;
end.
