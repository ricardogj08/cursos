program Programa;

{$APPTYPE CONSOLE}

type
  TClientes = array[1..3] of String;
  TCuotas = array[1..3, 1..3] of Double;
  TTotal = array[1..3] of Double;

{ Carga los valores de la Matriz de Clientes y sus Cuotas. }
procedure Cargar(var Clientes: TClientes; var Cuotas: TCuotas);
var
  x, y: Integer;
begin
  for x := 1 to 3 do
  begin
    write('Ingresa el nombre del cliente: [', x, '][', y, ']: ');
    ReadLn(Clientes[x]);

    for y := 1 to 3 do
    begin
      write('Ingresa la cuota del cliente [', x, '][', y, ']: ');
      ReadLn(Cuotas[x, y]);
    end;
  end;
end;

{ Calcula la cuota total de cada cliente. }
procedure CalcularTotal(Cuotas: TCuotas; var Total: TTotal);
var
 x, y: Integer;
 suma: Double;
begin
  for x := 1 to 3 do
  begin
    suma := 0;

    for y := 1 to 3 do
    begin
      suma := suma + Cuotas[x, y];
    end;

    Total[x] := suma;
  end;
end;

{ Muestra la cuota total de cada cliente. }
procedure ListadoTotales(Clientes: TClientes; Total: TTotal);
var
  i: Integer;
begin
  WriteLn('Listado de Clientes con su cuota total');

  for i := 1 to 3 do
  begin
    WriteLn(Clientes[i], ' ', Total[i]:0:2);
  end;
end;

{ Calcula cuantos clientes pagaron de contado. }
procedure PagoContado(Cuotas: TCuotas);
var
  i: Integer;
  cantidad: Integer;
begin
  cantidad := 0;

  for i := 1 to 3 do
  begin
    if (Cuotas[i, 2] = 0) and (Cuotas[i, 3] = 0) then
    begin
      cantidad := cantidad + 1;
    end;
  end;

  WriteLn('La cantidad de clientes que pagaron de contado son: ', cantidad);
end;

{ Calcula la suma total de las Cuotas totales de los clientes. }
procedure RecaudacionEmpresa(Total: TTotal);
var
  i: Integer;
  suma: Double;
begin
  suma := 0;

  for i := 1 to 3 do
  begin
    suma := suma + Total[i];  
  end;

  WriteLn('Total recaudado: ', suma:0:2);
end;

var
  Clientes: TClientes;
  Cuotas: TCuotas;
  Total: TTotal;

begin
  Cargar(Clientes, Cuotas);
  CalcularTotal(Cuotas, Total);
  ListadoTotales(Clientes, Total);
  PagoContado(Cuotas);
  RecaudacionEmpresa(Total);
  ReadLn;
end.
