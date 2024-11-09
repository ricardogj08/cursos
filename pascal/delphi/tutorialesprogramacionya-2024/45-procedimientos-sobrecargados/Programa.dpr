program Programa;

{$APPTYPE CONSOLE}

procedure MostrarTitulo(titulo: String); overload;
begin
  WriteLn(titulo);
end;

procedure MostrarTitulo(titulo, comentario: String); overload;
begin
  WriteLn(titulo, ' (', comentario, ')');
end;

begin
  MostrarTitulo('Sistema de Ventas');
  WriteLn;
  MostrarTitulo('Sistema de Ventas', 'Windows');
  ReadLn;
end.
