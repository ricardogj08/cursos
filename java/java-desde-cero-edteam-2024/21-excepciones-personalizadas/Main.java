import java.util.Scanner;

class Main {
  private static final Scanner scanner = new Scanner(System.in);

  public static void main(String[] args) {
    try {
      int number = readPositiveNumber();

      System.out.println(number);
    } catch (NegativeNumberException e) {
      System.out.println(e.getMessage());
    }
  }

  public static int readPositiveNumber() throws NegativeNumberException {
    System.out.print("Ingresa un número: ");
    int number = scanner.nextInt();

    if (number < 0) {
      throw new NegativeNumberException("No debe ser un número negativo!!");
    }

    return number;
  }
}
