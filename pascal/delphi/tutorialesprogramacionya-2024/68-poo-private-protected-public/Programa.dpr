program Programa;

{$APPTYPE CONSOLE}

uses
  DadoUnit in 'DadoUnit.pas';

var
  Dado: TDado;

begin
  Randomize;

  WriteLn('=> Prueba del dado');

  Dado := TDado.Create;

  Dado.Tirar;
  Dado.Imprimir;
  { Dado.Value; }
  Dado.Free;

  ReadLn;
end.
