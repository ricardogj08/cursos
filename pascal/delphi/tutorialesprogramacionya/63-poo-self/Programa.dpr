program Programa;

{$APPTYPE CONSOLE}

type
  TOperacion = class
    Valor1: Integer;
    Valor2: Integer;
    procedure Cargar;
    procedure Sumar;
    procedure Restar;
  end;


procedure TOperacion.Cargar;
begin
  Write('Ingresa el primer valor: ');
  ReadLn(Valor1);

  Write('Ingresa el segundo valor: ');
  ReadLn(Valor2);

  { Se utiliza "self" para llamar a elementos de la misma clase. }
  Self.Sumar;
  Self.Restar;
end;

{ Calcula la suma de dos números. }
procedure TOperacion.Sumar;
var
  suma: Integer;
begin
  suma := Valor1 + Valor2;
  WriteLn('La suma de ', Valor1, ' y ', Valor2, ' es ', suma);
end;

{ Calcula la resta de dos números. }
procedure TOperacion.Restar;
var
  resta: Integer;
begin
  resta := Valor1 - Valor2;
  WriteLn('La resta de ', Valor1, ' y ', Valor2, ' es ', resta);
end;

var
  Operacion1: TOperacion;

begin
  Operacion1 := TOperacion.Create;

  Operacion1.Cargar;
  Operacion1.Free;

  ReadLn;
end.
