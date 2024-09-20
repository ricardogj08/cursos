program Programa;

{$APPTYPE CONSOLE}

type
  TFecha = record
    Dia: Integer;
    Mes: Integer;
    Anio: Integer;
  end;

  TProducto = record
    Codigo: Integer;
    Nombre: String;
    Precio: Double;
    FechaVencimiento: TFecha;
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

  Write('Día de vencimiento: ');
  ReadLn(Producto.FechaVencimiento.Dia);

  Write('Mes de vencimiento: ');
  ReadLn(Producto.FechaVencimiento.Mes);

  Write('Año de vencimiento: ');
  ReadLn(Producto.FechaVencimiento.Anio);
end;

{ Imprime la información de un producto. }
procedure Imprimir(Producto: TProducto);
begin
  WriteLn('************************************');
  WriteLn('Código: ', Producto.Codigo);
  WriteLn('Nombre: ', Producto.Nombre);
  WriteLn('Precio: ', Producto.Precio:0:2);
  WriteLn('Fecha de vencimiento: ', Producto.FechaVencimiento.Dia, '/',
    Producto.FechaVencimiento.Mes, '/', Producto.FechaVencimiento.Anio);
  WriteLn('************************************');
end;

var
  Producto1: TProducto;

begin
  Cargar(Producto1);
  Imprimir(Producto1);
  ReadLn;
end.
