program Programa;

{$APPTYPE CONSOLE}

var
  f: Integer;

begin
  for f := 1 to 100 do
  begin
    Write(f, '-');
  end;

  ReadLn;
end.
