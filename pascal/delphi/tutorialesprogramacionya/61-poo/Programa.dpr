program Programa;

{$APPTYPE CONSOLE}

type
  TTriangulo = class
    Lado1: Integer;
    Lado2: Integer;
    Lado3: Integer;
    procedure Cargar;
    procedure LadoMayor;
    procedure EsEquilatero;
  end;

{ Carga la información de un triángulo. }
procedure TTriangulo.Cargar;
begin
  Write('Ingresa el valor del primer lado: ');
  ReadLn(Lado1);

  Write('Ingresa el valor del segundo lado: ');
  ReadLn(Lado2);

  Write('Ingresa el valor del tercer lado: ');
  ReadLn(Lado3);
end;

{ Comprueba que lado del triangulo es mayor. }
procedure TTriangulo.LadoMayor;
begin
  Write('Lado mayor: ');

  if (Lado1 > Lado2) and (Lado1 > Lado2) then
  begin
    WriteLn(Lado1);
  end
  else if Lado1 > Lado2 then
  begin
    Write(Lado2);
  end
  else
  begin
    WriteLn(Lado3);
  end;
end;

{ Comprueba si un triangulo es equilátero. }
procedure TTriangulo.EsEquilatero;
begin
  if (Lado1 = Lado2) and (Lado1 = Lado3) then
  begin
    Write('Es un triangulo equilátero');
  end
  else
  begin
    WriteLn('No es un triangulo equilátero');
  end;
end;

var
  Triangulo1: TTriangulo;

begin
  Triangulo1 := TTriangulo.Create;

  Triangulo1.Cargar;
  Triangulo1.LadoMayor;
  Triangulo1.EsEquilatero;
  Triangulo1.Free;

  ReadLn;
end.
