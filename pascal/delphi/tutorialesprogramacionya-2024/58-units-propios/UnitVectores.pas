{ Definición del nombre de la biblioteca. }
unit UnitVectores;

{
  Zona de definición de tipos de datos,
  procedimientos, funciones, variables, etc.
  Que serán accesibles por el programa principal
  u otras unidades.
}
interface
  type
    TVector = array[1..5] of Integer;

    procedure Cargar(var Vector: TVector);
    procedure Imprimir(Vector: TVector);

{
  Zona de implementación de funciones, procedimientos y
  variable definidas en el área de "interface".
  También se pueden definir funciones, procedimientos
  y variables locales dentro de la unidad.
}
implementation
  { Carga los elementos de un vector. }
  procedure Cargar(var Vector: TVector);
  var
    i: Integer;
  begin
    for i := 1 to 5 do
    begin
      Write('Ingresa el valor del elemento [', i, ']: ');
      ReadLn(Vector[i]);
    end;
  end;

  { Imprime los elementos de un vector. }
  procedure Imprimir(Vector: TVector);
  var
    i: Integer;
  begin
    for i := 1 to 5 do
    begin
      Write(Vector[i], ' ');
    end;
    WriteLn;
    WriteLn('-------------------------');
  end;
end.
