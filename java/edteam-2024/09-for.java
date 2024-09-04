class Main {
  public static void main(String[] args) {
    int suma = 0;

    for (int i = 0; i <= 10; i++) {
      if (i % 2 == 0) {
        suma += i;

        System.out.println("i = " + i);
      }
    }

    System.out.println("Suma = " + suma);
  }
}
