program Programa;

{$APPTYPE CONSOLE}

procedure MostrarMensaje(mensaje: String);
begin
  WriteLn('*****************************************************************');
  WriteLn(mensaje);
end;

procedure RealizarSuma;
var
  valor1: Integer;
  valor2: Integer;
  suma: Integer;
begin
  write('Ingresa el primer valor: ');
  ReadLn(valor1);

  write('Ingresa el segundo valor: ');
  ReadLn(valor2);

  suma := valor1 + valor2;

  WriteLn('La suma de los dos valores es: ', suma);
end;

begin
  MostrarMensaje('El programa calcula la suma de dos valores ingresados por teclado');

  RealizarSuma;

  MostrarMensaje('Gracias por utilizar este programa');

  ReadLn;
end.
