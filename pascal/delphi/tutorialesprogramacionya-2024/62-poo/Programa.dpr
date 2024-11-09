program Programa;

{$APPTYPE CONSOLE}

type
  TPunto = class
    X: Integer;
    Y: Integer;
    procedure Cargar;
    procedure ImprimirCuadrante;
  end;

{ Carga los valores de las coordenadas. }
procedure TPunto.Cargar;
begin
  Write('Ingresa el valor de la coordenada x: ');
  ReadLn(X);

  Write('Ingresa el valor de la coordenada y: ');
  ReadLn(Y);
end;

{ Comprueba en qué cuadrante se encuentran las coordenadas. }
procedure TPunto.ImprimirCuadrante;
begin
  if (X > 0) and (Y > 0) then
  begin
    WriteLn('Se encuentra en el primer cuadrante.');
  end
  else if (X < 0) and (Y > 0) then
  begin
    WriteLn('Se encuentra en el segundo cuadrante.');
  end
  else if (X < 0) and (Y < 0) then
  begin
    WriteLn('Se encuentra en el tercer cuadrante.');
  end
  else if (X > 0) and (Y < 0) then
  begin
    WriteLn('Se encuentra en el cuarto cuadrante.');
  end
  else
  begin
    WriteLn('El punto no está en un cuadrante.');
  end;
end;

var
  Punto1: TPunto;

begin
  Punto1 := TPunto.Create;

  Punto1.Cargar;
  Punto1.ImprimirCuadrante;
  Punto1.Free;

  ReadLn;
end.
