program Programa;

{$APPTYPE CONSOLE}

var
  nota1: Integer;
  nota2: Integer;
  nota3: Integer;
  nombre: String;
  opcion: String;
  promedio: Double;

begin
  repeat
    Write('Ingresa el nombre: ');
    ReadLn(nombre);

    Write('Ingresa la calificación de la primer nota: ');
    ReadLn(nota1);

    Write('Ingresa la calificación de la segunda nota: ');
    ReadLn(nota2);

    Write('Ingresa la calificación de la tercer nota: ');
    ReadLn(nota3);

    promedio := (nota1 + nota2 + nota3) / 3;

    if promedio >= 7 then
    begin
      WriteLn('Nombre del alumno: ', nombre);
      WriteLn('Aprobado');
    end
    else if promedio >= 4 then
    begin
      WriteLn('Recupera');
    end
    else
    begin
      Write('Reprobado')
    end;

    WriteLn;
    WriteLn;
    Write('Desea ingresar otro juego de notas (si/no) ?: ');
    ReadLn(opcion);
  until opcion = 'no';
end.
