program Programa;

{$APPTYPE CONSOLE}

procedure MostrarTitulo(titulo: String; caracter: Char = '*');
var
  i: Integer;
begin
  WriteLn(titulo);

  for i := 1 to Length(titulo) do
  begin
    Write(caracter);
  end;

  WriteLn;
end;

begin
  MostrarTitulo('Sistema de Ventas');
  WriteLn;
  MostrarTitulo('Ingresos del 2017 -');
  ReadLn;
end.
