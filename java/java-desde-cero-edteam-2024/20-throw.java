class Main {
  public static void main(String[] args) {
    try {
      double result = divide(10, 0);

      System.out.println("Resultado = " + result);
    } catch (ArithmeticException e) {
      System.out.println(e.getMessage());
    }
  }

  public static double divide(int numerator, int denominator) {
    if (denominator == 0) {
      throw new ArithmeticException("No se puede realizar una división entre cero!!");
    }

    return numerator / denominator;
  }
}
