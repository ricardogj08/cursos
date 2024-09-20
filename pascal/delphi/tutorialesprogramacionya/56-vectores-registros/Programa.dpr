program Programa;

{$APPTYPE CONSOLE}

type
  TProducto = record
    Codigo: Integer;
    Nombre: String;
    Precio: Double;
  end;

  TProductos = array[1..4] of TProducto;

{ Carga la información de los productos. }
procedure Cargar(var Productos: TProductos);
var
  i: Integer;
begin
  for i := 1 to 4 do
  begin
    WriteLn('=> Ingresa la información del producto [', i, ']');

    Write('Código: ');
    ReadLn(Productos[i].Codigo);

    Write('Nombre: ');
    ReadLn(Productos[i].Nombre);

    Write('Precio: ');
    ReadLn(Productos[i].Precio);
  end;
end;

{ Muestra la información de los productos. }
procedure Listar(Productos: TProductos);
var
  i: Integer;
begin
  WriteLn('=> Lista completa de productos');

  for i := 1 to 4 do
  begin
    WriteLn('=> Producto [', i, ']');
    WriteLn('Código: ', Productos[i].Codigo);
    WriteLn('Nombre: ', Productos[i].Nombre);
    WriteLn('Nombre: ', Productos[i].Precio:0:2);
    WriteLn('----------------------------------------');
  end;
end;

{ Comprueba que producto tiene mayor precio. }
procedure ProductoPrecioMayor(Productos: TProductos);
  var
    i: Integer;
    precio: Double;
    nombre: String;
begin
  precio := Productos[1].Precio;
  nombre := Productos[1].Nombre;

  for i := 2 to 4 do
  begin
    precio := Productos[i].Precio;
    nombre := Productos[i].Nombre;
  end;

  WriteLn('El producto "', nombre, '" tiene un precio mayor y es de: ', precio:0:2)
end;

var
  Productos: TProductos;

begin
  Cargar(Productos);
  Listar(Productos);
  ProductoPrecioMayor(Productos);
  ReadLn;
end.
