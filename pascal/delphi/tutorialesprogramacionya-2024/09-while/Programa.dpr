program Programa;

{$APPTYPE CONSOLE}

var
  x: Integer;

begin
  x := 0;

  while x <= 100 do
  begin
    Write(x, ' - ');
    x := x + 1;
  end;

  ReadLn;
end.
