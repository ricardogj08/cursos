import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    int numberOne = readValue("Ingresa el primer número: ");
    int numberTwo = readValue("Ingresa el segundo número: ");
    int numberThree = readValue("Ingresa el tercer número: ");
    int numberFour = readValue("Ingresa el cuarto número: ");

    int max = getMaxValue(numberOne, numberTwo, numberThree, numberFour);

    System.out.println("El valor máximo es: " + max);
  }

  public static int readValue(String message) {
    System.out.print(message);

    return new Scanner(System.in).nextInt();
  }

  public static int getMaxValue(int numberOne, int numberTwo, int numberThree, int numberFour) {
    int max = numberOne;

    if (numberTwo > max) {
      max = numberTwo;
    }

    if (numberThree > max) {
      max = numberThree;
    }

    if (numberFour > max) {
      max = numberFour;
    }

    return max;
  }
}
