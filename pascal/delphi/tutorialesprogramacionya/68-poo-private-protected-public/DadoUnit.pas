unit DadoUnit;

{
  Se recomienda implementar las clases en diferentes unidades.
  Todos tienen acceso a los atributos privados
  y protegidos dentro del mismo archivo.
}
interface
  type
    TDado = class
      { strict private }
      private
        Valor: Integer;
        procedure Separador;
      { strict protected }
      public
        procedure Tirar;
        procedure Imprimir;
    end;


implementation
  { Imprime un separador. }
  procedure TDado.Separador;
  begin
    WriteLn('********************');
  end;

  { Realiza la acción de lanzar un dado. }
  procedure TDado.Tirar;
  begin
    Valor := Random(6) + 1;
  end;

  { Imprime el valor del dado lanzado. }
  procedure TDado.Imprimir;
  begin
    Separador;
    WriteLn(Valor);
    Separador;
  end;
end.
