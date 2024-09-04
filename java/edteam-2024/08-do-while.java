import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);

    double number = 0;

    do {
      System.out.print("Ingresa un valor entre 14 y 60: ");

      number = scanner.nextDouble();

      if (number < 14 || number > 60) {
        System.out.println("Debes ingresar un número en los limites permitidos!!");
      }
    } while (number < 14 || number > 60);

    scanner.close();

    System.out.println("El número ingresado es correcto!!");
  }
}
