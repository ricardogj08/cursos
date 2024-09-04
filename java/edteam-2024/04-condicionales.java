import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);

    System.out.print("Ingresa un número: ");
    int number = scanner.nextInt();

    if (number < 0) {
      System.out.println("El número ingresado es menor a cero.");
    } else {
      System.out.println("El número ingresado es mayor a cero.");
    }
  }
}
