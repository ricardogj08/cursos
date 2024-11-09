unit CalculadoraUnit;

interface
  type
    TCalculadora = class
      strict protected
        Valor1: Double;
        valor2: Double;
        Resultado: Double;
      public
        procedure Cargar1;
        procedure Cargar2;
        procedure Sumar;
        procedure Restar;
        procedure Multiplicar;
        procedure Dividir;
        procedure Imprimir(mensaje: String);
    end;

    TCalculadoraCientifica = class(TCalculadora)
      procedure Cuadrado;
      procedure Raiz;
    end;

implementation
  { Captura la información del primer valor. }
  procedure TCalculadora.Cargar1;
  begin
    Write('Ingresa el primer valor: ');
    ReadLn(Valor1);
  end;

  { Captura la información del segundo valor. }
  procedure TCalculadora.Cargar2;
  begin
    Write('Ingresa el segundo valor: ');
    ReadLn(Valor2);
  end;

  { Calcula la suma de los dos valores. }
  procedure TCalculadora.Sumar;
  begin
    Resultado := Valor1 + Valor2;
  end;

  { Calcula la resta de los dos valores. }
  procedure TCalculadora.Restar;
  begin
    Resultado := Valor1 - Valor2
  end;

  { Calcula la muliplicación de los dos valores. }
  procedure TCalculadora.Multiplicar;
  begin
    Resultado := Valor1 * Valor2;
  end;

  { Calcula la división de los dos valores. }
  procedure TCalculadora.Dividir;
  begin
    Resultado := Valor1 / Valor2;
  end;

  { Imprime el resultado de las operaciones. }
  procedure TCalculadora.Imprimir(mensaje: String);
  begin
    WriteLn(mensaje,': ', Resultado:0:2);
  end;

  { Calcula el cuadrado del primer valor. }
  procedure TCalculadoraCientifica.Cuadrado;
  begin
    Resultado := Valor1 * Valor1;
  end;

  { Calcula la raíz cuadrada del primer valor. }
  procedure TCalculadoraCientifica.Raiz;
  begin
    Resultado := Sqrt(Valor1);
  end;
end.
