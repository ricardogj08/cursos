import java.util.Scanner;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;

class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);

    System.out.print("Ingresa un número: ");

    // Excepción no comprobada.
    try {
      int number = Integer.parseInt(scanner.nextLine());

      int result = 10 / number;

      System.out.println("Resultado = " + result);
    } catch (ArithmeticException e) {
      System.out.println("El número ingresado debe ser mayor a cero!!");
    }

    // Excepción comprobada.
    try {
      FileReader fileReader = new FileReader("archivo.txt");
      BufferedReader bufferedReader = new BufferedReader(fileReader);
      String line = bufferedReader.readLine();
      System.out.println("Contenido de la primer línea del archivo: " + line);
    } catch (FileNotFoundException e) {
      System.out.println("No se encontró el archivo!!");
    } catch (IOException e) {
      System.out.println(e.getMessage());
    }
  }
}
