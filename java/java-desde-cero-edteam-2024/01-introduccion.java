import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);

    System.out.print("Ingresa el primer número: ");
    int numberOne = scanner.nextInt();

    System.out.print("Ingresa el segundo número: ");
    int numberTwo = scanner.nextInt();

    int suma = numberOne + numberTwo;

    System.out.println("Suma = " + suma);

    scanner.close();
  }
}
