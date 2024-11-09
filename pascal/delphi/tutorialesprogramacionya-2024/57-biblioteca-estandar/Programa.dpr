program Programa;

{$APPTYPE CONSOLE}

{
  Las bibliotecas se almacenan en archivos especiales
  llamados unidades (Unit).
}
uses
  SysUtils, Math;
  { Para futuras versiones de Delphi: }
  { System.SysUtils, System.Math; }

var
  valor1: Integer;
  cadena1: String;
  valor2: Double;

begin
  Write('Ingresa un entero: ');
  ReadLn(valor1);

  {
    Nuevo procedimiento.
    Convierte un entero a string.
  }
  cadena1 := IntToStr(valor1);

  WriteLn('La variable cadena1 tiene el valor de: ', cadena1);

  WriteLn('Presiona la tecla Enter para emitir un Beep');
  ReadLn;
  Beep;

  {
    Nuevo procedimiento.
    Eleva a una potencia cualquier tipo de dato numérico.
  }
  valor2 := Power(valor1, 3);
  WriteLn(valor1, ' elevado al cubo es: ', valor2:0:0);

  ReadLn;
end.
