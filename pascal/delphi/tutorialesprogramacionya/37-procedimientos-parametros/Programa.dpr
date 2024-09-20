program Programa;

{$APPTYPE CONSOLE}

{ Calcula el perímetro de un cuadrado. }
procedure MostrarPerimetro(lado: Integer);
var
  perimetro: Integer;
begin
  perimetro := lado * 4;
  WriteLn('El perímetro es: ', perimetro);
end;

{ Calcula el área de un cuadrado. }
procedure MostrarArea(lado: Integer);
var
  area: Integer;
begin
  area := lado * lado;
  WriteLn('El área es: ', area);
end;

var
  lado: Integer;
  respuesta: String;

begin
  Write('Ingresa el valor del lado de un cuadrado: ');
  ReadLn(lado);

  Write('¿Qué deseas calcular (area/perimetro)?: ');
  ReadLn(respuesta);

  if respuesta = 'perimetro' then
  begin
    MostrarPerimetro(lado);
  end
  else if respuesta = 'area' then
  begin
    MostrarArea(lado);
  end;

  ReadLn;
end.
