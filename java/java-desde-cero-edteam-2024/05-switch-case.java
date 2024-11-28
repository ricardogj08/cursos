import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);

    System.out.println("1. Sumar");
    System.out.println("2. Dividir");
    System.out.print("Selecciona una opción: ");

    int option = scanner.nextInt();

    System.out.print("Ingresa el primer número: ");
    double numberOne = scanner.nextFloat();

    System.out.print("Ingresa el segundo número: ");
    double numberTwo = scanner.nextFloat();

    switch(option) {
      case 1:
        System.out.println("Suma = " + (numberOne + numberTwo));
        break;
      case 2:
        if (numberTwo != 0) {
          System.out.println("División = " + (numberOne / numberTwo));
        } else {
          System.out.println("No se puede realizar la división");
        }
        break;
      default:
        System.out.println("Opción incorrecta.");
    }
  }
}
