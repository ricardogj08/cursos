class Main {
  public static void main(String[] args) {
    // Operadores aritméticos: +, -, /, *, %
    int numberOne = 10;
    int numberTwo = 5;

    int suma = numberOne + numberTwo;
    System.out.println("Suma = " + suma);

    int resta = numberOne - numberTwo;
    System.out.println("Resta = " + resta);

    int multiplicacion = numberOne * numberTwo;
    System.out.println("Multiplicación = " + multiplicacion);

    int division = numberOne / numberTwo;
    System.out.println("División = " + division);

    int residuo = numberOne % numberTwo;
    System.out.println("Residuo = " + residuo);

    // Jerarquía de operaciones.
    int a = 1;
    int b = 2;
    int c = 3;

    int resultado = (a + b) * c;

    System.out.println("Total = " + resultado);

    // Operadores de incremento y decremento.
    int x = 5;
    int y = 0;

    //y = ++x;
    //y = x++;
    //y = --x;
    //y = x--;
    System.out.println("Preincremento x = " + x);
    System.out.println("Preincremento y = " + y);

    // Operador de igualdad.
    int z = 5;

    boolean isTrue = (x == z);
    System.out.println("Valor de isTrue = " + isTrue);
  }
}
