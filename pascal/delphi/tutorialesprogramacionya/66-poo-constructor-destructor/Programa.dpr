program Programa;

{$APPTYPE CONSOLE}

type
  TCliente = class
    Nombre: String;
    Monto: Double;
    constructor Create(nombre: String); { Definición del constructor. }
    procedure Depositar(monto: Double);
    procedure Retirar(monto: Double);
    procedure Imprimir;
  end;

  TBanco = class
    Cliente1: TCliente;
    Cliente2: TCliente;
    Cliente3: TCliente;
    constructor Create; { Definición del constructor. }
    destructor Destroy; Override; { Definición y sobrescritura del destructor. }
    procedure Transacciones;
    procedure DepositosTotales;
  end;

{ Crea el constructor de la clase "TCliente". }
constructor TCliente.Create(nombre: String);
begin
  { Llama al constructor padre de TObject. }
  inherited Create;
  
  Self.Nombre := nombre;
  Self.Monto := 0;
end;

{ Ingresa un deposito al monto total del cliente. }
procedure TCliente.Depositar(monto: Double);
begin
  Self.Monto := Self.Monto + monto;
end;

{ Realiza un retiro al monto total del cliente. }
procedure TCliente.Retirar(monto: Double);
begin
  Self.Monto := Self.Monto - monto;
end;

{ Imprime la información del cliente. }
procedure TCliente.Imprimir;
begin
  WriteLn('El cliente ', Nombre, ' tiene depositado el monto de ', Monto:0:2);
end;

{ Crea el constructor de la clase "TBanco". }
constructor TBanco.Create;
begin
  { Llama al constructor padre de TObject. }
  inherited Create;

  Cliente1 := TCliente.Create('Juan');
  Cliente2 := TCliente.Create('Ana');
  Cliente3 := TCliente.Create('Pedro');
end;

{ Crea el destructor de la clase "TBanco". }
destructor TBanco.Destroy;
begin
  Cliente1.Free;
  Cliente2.Free;
  Cliente3.Free;

  { Llama al destructor padre de TObject. }
  inherited Destroy;
end;

{ Realiza transacciones en el banco. }
procedure TBanco.Transacciones;
begin
  Cliente1.Depositar(100);
  Cliente2.Depositar(300);
  Cliente3.Depositar(400);
  Cliente1.Retirar(50);
end;

procedure TBanco.DepositosTotales;
var
  suma: Double;
begin
  suma := Cliente1.Monto + Cliente2.Monto + Cliente3.Monto;

  Cliente1.Imprimir;
  Cliente2.Imprimir;
  Cliente3.Imprimir;

  WriteLn('El banco tiene un total de: ', suma:0:2);
end;

var
  Banco: TBanco;

begin
  Banco := TBanco.Create;

  Banco.Transacciones;
  Banco.DepositosTotales;
  Banco.Free;

  ReadLn;
end.
