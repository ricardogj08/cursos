program Programa;

{$APPTYPE CONSOLE}

type
  TDado = class
    private
      FLado: Integer;
    public
      procedure Tirar;
      property Lado: Integer read FLado;
  end;

{ Establece el valor del lado de un dado. }
procedure TDado.Tirar;
begin
  FLado := Random(6) + 1;
end;

var
  Dado1: TDado;

begin
  Randomize;

  Dado1 := TDado.Create;

  Dado1.Tirar;
  WriteLn('Valor del dado: ', Dado1.Lado);

  Dado1.Tirar;
  WriteLn('Valor del dado luego de tirar nuevamente: ', Dado1.Lado);

  ReadLn;
end.
