program Programa;

{$APPTYPE CONSOLE}

var
  n, x: Integer;

begin
  write('Ingrese el valor final: ');
  ReadLn(n);

  x := 1;

  while x <= n do
  begin
    Write(x, '-');
    x := x + 1;
  end;

  ReadLn;
end.
