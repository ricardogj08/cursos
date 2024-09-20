program Programa;

{$APPTYPE CONSOLE}

type
  TProducto = record
    Codigo: Integer;
    Nombre: String;
    Precio: Double;
  end;

{ Carga la información de un producto. }
procedure Cargar(var Producto: TProducto);
begin
  WriteLn('=> Ingresa la información del producto');

  Write('Código: ');
  ReadLn(Producto.Codigo);

  Write('Nombre: ');
  ReadLn(Producto.Nombre);

  Write('Precio: ');
  ReadLn(Producto.Precio);
end;

{ Imprime la información del producto. }
procedure Imprimir(Producto: TProducto);
begin
  WriteLn('************************************');
  WriteLn('Codigo: ', Producto.Codigo);
  WriteLn('Nombre: ', Producto.Nombre);
  WriteLn('Precio: ', Producto.Precio:0:2);
  WriteLn('************************************');
end;

var
  Producto1: TProducto;
  Producto2: TProducto;

begin
  Cargar(Producto1);
  Cargar(Producto2);

  Imprimir(Producto1);
  Imprimir(Producto2);

  ReadLn;
end.
