program Programa;

{$APPTYPE CONSOLE}

type
  TDado = class
    Valor: Integer;
    procedure Tirar;
    procedure Imprimir;
  end;

  TJuegoDeDados = class
    Dado1: TDado;
    Dado2: TDado;
    Dado3: TDado;
    constructor Create;
    destructor Destroy; Override;
    procedure Jugar;
  end;

{ Realiza un tiro aleatorio de dados. }
procedure TDado.Tirar;
begin
  { Genera un valor aleatorio entre 1 y 6 (0 <= X < 6). }
  Valor := Random(6) + 1;
end;

{ Imprime el valor del dado tirado. }
procedure TDado.Imprimir;
begin
  WriteLn('Valor del dado: ', Valor);
end;

{ Constructor que crea los dados. }
constructor TJuegoDeDados.Create;
begin
  inherited Create;

  Dado1 := TDado.Create;
  Dado2 := TDado.Create;
  Dado3 := TDado.Create;
end;

{ Destructor que libera el espacio de memoria de los dados. }
destructor TJuegoDeDados.Destroy;
begin
  Dado1.Free;
  Dado2.Free;
  Dado3.Free;

  inherited Destroy;
end;

{ Implementa el proceso del juego. }
procedure TJuegoDeDados.Jugar;
begin
  Dado1.Tirar;
  Dado1.Imprimir;

  Dado2.Tirar;
  Dado2.Imprimir;

  Dado3.Tirar;
  Dado3.Imprimir;

  if (Dado1.Valor = Dado2.Valor) and (Dado1.Valor = Dado3.Valor) then
  begin
    WriteLn('Ganó');
  end
  else
  begin
    WriteLn('Perdió');
  end;
end;

var
  JuegoDeDados: TJuegoDeDados;

begin
  Randomize;

  JuegoDeDados := TJuegoDeDados.Create;

  JuegoDeDados.Jugar;
  JuegoDeDados.Free;

  ReadLn;
end.
