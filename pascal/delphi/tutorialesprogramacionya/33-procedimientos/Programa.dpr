program Programa;

{$APPTYPE CONSOLE}

{
  Los procedimientos son las funciones.
  Definición del procedimiento.
}
procedure Presentacion;
begin
  WriteLn('Programa que permite cargar dos valores por teclado.');
  WriteLn('Realiza la suma de los valores');
  WriteLn('Muestra el resultado de la suma');
end;

procedure RealizarSuma;
{ Definición de variables locales del procedimiento. }
var
  valor1: Integer;
  valor2: Integer;
  suma: Integer;
begin
  Write('Ingresa el primer valor: ');
  ReadLn(valor1);

  Write('Ingresa el segundo valor: ');
  ReadLn(valor2);

  suma := valor1 + valor2;

  WriteLn('La suma de los valores es: ', suma);
end;

procedure Finalizacion;
begin
  writeLn('*******************************');
  WriteLn('Gracias por utilizar este programa');
end;

{ Bloque principal del programa. }
begin
  Presentacion;
  RealizarSuma;
  Finalizacion;
  ReadLn;
end.
