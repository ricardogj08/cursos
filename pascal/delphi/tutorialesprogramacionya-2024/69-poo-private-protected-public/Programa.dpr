program Programa;

{$APPTYPE CONSOLE}

uses
  CalculadoraUnit in 'CalculadoraUnit.pas';

var
  Calculadora: TCalculadora;
  CalculadoraCientifica: TCalculadoraCientifica;

begin
  WriteLn('=> Uso de la calculadora');

  Calculadora := TCalculadora.Create;

  Calculadora.Cargar1;
  Calculadora.Cargar2;
  Calculadora.Sumar;
  Calculadora.Imprimir('Suma');
  Calculadora.Restar;
  Calculadora.Imprimir('Resta');
  Calculadora.Multiplicar;
  Calculadora.Imprimir('Multiplicación');
  Calculadora.Dividir;
  Calculadora.Imprimir('División');
  Calculadora.Free;

  WriteLn('=> Uso de la calculadora científica');

  CalculadoraCientifica := TCalculadoraCientifica.Create;
  CalculadoraCientifica.Free;

  CalculadoraCientifica.Cargar1;
  CalculadoraCientifica.Cargar2;
  CalculadoraCientifica.Sumar;
  CalculadoraCientifica.Imprimir('Suma');
  CalculadoraCientifica.Restar;
  CalculadoraCientifica.Imprimir('Resta');
  CalculadoraCientifica.Multiplicar;
  CalculadoraCientifica.Imprimir('Multiplicación');
  CalculadoraCientifica.Dividir;
  CalculadoraCientifica.Imprimir('División');
  CalculadoraCientifica.Cuadrado;
  CalculadoraCientifica.Imprimir('Cuadrado del primer valor');
  CalculadoraCientifica.Raiz;
  CalculadoraCientifica.Imprimir('Raíz del primer valor');
  CalculadoraCientifica.Free;

  ReadLn;
end.
