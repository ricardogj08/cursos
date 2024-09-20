program Programa;

{$APPTYPE CONSOLE}

type
  TCalculadora = class
    Valor1: Double;
    Valor2: Double;
    Resultado: Double;
    procedure Cargar1;
    procedure Cargar2;
    procedure Sumar;
    procedure Restar;
    procedure Multiplicar;
    procedure Dividir;
    procedure Imprimir;
  end;

  TCalculadoraCientifica = class(TCalculadora)
    procedure Cuadrado;
    procedure Raiz;
  end;

var
  Calculadora: TCalculadora;
  CalculadoraCientifica: TCalculadoraCientifica;

{ Carga la información del primer valor. }
procedure TCalculadora.Cargar1;
begin
  Write('Ingresa el primer valor: ');
  ReadLn(Valor1);
end;

{ Carga la información del segundo valor. }
procedure TCalculadora.Cargar2;
begin
  Write('Ingresa el segundo valor: ');
  ReadLn(Valor2);
end;

{ Calcula suma de dos valores. }
procedure TCalculadora.Sumar;
begin
  Resultado := Valor1 + Valor2;
end;

{ Calcula la resta de dos valores. }
procedure TCalculadora.Restar;
begin
  Resultado := Valor1 - Valor2;
end;

{ Calcula la multiplicación de dos valores. }
procedure TCalculadora.Multiplicar;
begin
  Resultado := Valor1 * Valor2;
end;

{ Calcula la división de dos valores. }
procedure TCalculadora.Dividir;
begin
  Resultado := Valor1 / Valor2;
end;

{ Imprime el resultado de cada operación. }
procedure TCalculadora.Imprimir;
begin
  WriteLn('Resultado: ', Resultado:0:2);
end;

{ Calcula el cuadro del primer valor. }
procedure TCalculadoraCientifica.Cuadrado;
begin
  Resultado := Valor1 * Valor1;
end;

{ Calcula la raíz cuadrada del primer valor. }
procedure TCalculadoraCientifica.Raiz;
begin
  Resultado := Sqrt(Valor1);
end;

begin
  Calculadora := TCalculadora.Create;

  WriteLn('=> Uso de la calculadora');
  Calculadora.Cargar1;
  Calculadora.Cargar2;
  Calculadora.Sumar;
  Calculadora.Imprimir;
  Calculadora.Restar;
  Calculadora.Imprimir;
  Calculadora.Multiplicar;
  Calculadora.Imprimir;
  Calculadora.Dividir;
  Calculadora.Imprimir;
  Calculadora.Free;

  CalculadoraCientifica := TCalculadoraCientifica.Create;

  WriteLn('=> Uso de la calculadora científica');
  CalculadoraCientifica.Cargar1;
  CalculadoraCientifica.Cargar2;
  CalculadoraCientifica.Sumar;
  CalculadoraCientifica.Imprimir;
  CalculadoraCientifica.Restar;
  CalculadoraCientifica.Imprimir;
  CalculadoraCientifica.Multiplicar;
  CalculadoraCientifica.Imprimir;
  CalculadoraCientifica.Dividir;
  CalculadoraCientifica.Imprimir;
  CalculadoraCientifica.Cuadrado;
  CalculadoraCientifica.Imprimir;
  CalculadoraCientifica.Raiz;
  CalculadoraCientifica.Imprimir;
  CalculadoraCientifica.Free;

  ReadLn;
end.
