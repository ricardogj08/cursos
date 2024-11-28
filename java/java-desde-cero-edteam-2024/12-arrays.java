import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    int[] numbers = new int[4];

    for (int i = 0; i < numbers.length; i++) {
      numbers[i] = readValue("Ingresa el número " + (i + 1) + ": ");
    }

    int max = getMaxValue(numbers);

    System.out.println("El valor máximo es: " + max);
  }

  public static int readValue(String message) {
    System.out.print(message);

    return new Scanner(System.in).nextInt();
  }

  public static int getMaxValue(int[] numbers) {
    int max = numbers[0];

    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] > max) {
        max = numbers[i];
      }
    }

    return max;
  }
}
