program Programa;

{$APPTYPE CONSOLE}

{
  Definición de un registro.
  Son similares a las estructuras de datos en C.
}
type
  TProducto = record
    Codigo: Integer;
    Nombre: String;
    Precio: Double;
  end;

var
  Producto1: TProducto;
  Producto2: TProducto;

begin
  WriteLn('Ingresa los datos del primer producto:');
  write('Código: ');
  ReadLn(Producto1.Codigo);
  write('Nombre: ');
  ReadLn(Producto1.Nombre);
  write('Precio: ');
  ReadLn(Producto1.Precio);

  WriteLn('Ingresa los datos del segundo producto:');
  write('Código: ');
  ReadLn(Producto2.Codigo);
  write('Descripción: ');
  ReadLn(Producto2.Nombre);
  write('Precio: ');
  ReadLn(Producto2.Precio);

  if Producto1.Precio > Producto2.Precio then
  begin
    WriteLn('El producto "', Producto1.Nombre, '" tiene un precio mayor');
  end
  else
  begin
    WriteLn('El producto "', Producto2.Nombre, '" tiene un precio mayor');
  end;

  ReadLn;
end.
