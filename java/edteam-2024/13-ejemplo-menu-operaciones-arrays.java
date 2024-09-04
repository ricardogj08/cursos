import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    int[] numbers = new int[5];
    int option = 0;

    Scanner scanner = new Scanner(System.in);

    do {
      displayMenu();

      System.out.print("Selecciona una opción: ");
      option = scanner.nextInt();

      switch(option) {
        case 1:
          inputArrayValues(numbers, scanner);
          break;
        case 2:
          displayArray(numbers);
          break;
        case 3:
          searchElement(numbers, scanner);
          break;
        case 4:
          filterElements(numbers, scanner);
          break;
        case 5:
          modifyElement(numbers, scanner);
          break;
        case 6:
          deleteElement(numbers, scanner);
          break;
        case 7:
          bubbleSort(numbers);
          break;
        case 8:
          System.out.println("Saliendo del programa!!");
          break;
        default:
          System.out.println("Opción no válida!!");
      }
    } while(option != 8);

    scanner.close();
  }

  /*
   * Muestra el menú de opciones.
   */
  private static void displayMenu() {
    System.out.println("\n---- Menú de opciones ----");
    System.out.println("1. Agregar los elementos");
    System.out.println("2. Listar todos los elementos");
    System.out.println("3. Buscar un elemento");
    System.out.println("4. Filtrar un elemento");
    System.out.println("5. Modificar un elemento");
    System.out.println("6. Eliminar un elemento");
    System.out.println("7. Ordenar los elementos con el método de burbuja");
    System.out.println("8. Salir");
  }

  /*
   * Inserta un nuevo elemento en el array.
   */
  private static void inputArrayValues(int[] numbers, Scanner scanner) {
    System.out.println("Ingresa los valores para el arreglo: ");

    for (int i = 0; i < numbers.length; i++) {
      System.out.print("Ingresa el valor para la posición " + i + ": ");
      numbers[i] = scanner.nextInt();
    }

    System.out.println("Valores ingresados correctamente!!");
  }

  /*
   * Muestra todos los elementos del array.
   */
  private static void displayArray(int[] numbers) {
    for (int i = 0; i < numbers.length; i++) {
      System.out.println("numbers[" + i + "] = " + numbers[i]);
    }
  }

  /*
   * Busca un elemento dentro del array.
   */
  private static void searchElement(int[] numbers, Scanner scanner) {
    System.out.print("Ingresa el número a buscar: ");

    int elementToSearch = scanner.nextInt();

    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] == elementToSearch) {
        System.out.println("El elemento " + elementToSearch + " se encuentra en la posición " + 1);
        return;
      }
    }

    System.out.println("No se encontró el elemento!!");
  }

  /*
   * Filtra los elementos del array que son mayores a un cierto número.
   */
  private static void filterElements(int[] numbers, Scanner scanner) {
    System.out.print("Ingresa el valor para filtrar los elementos mayores a: ");

    int referenceValue = scanner.nextInt();

    // foreach() simplificado.
    for (int value: numbers) {
      if (value > referenceValue) {
        System.out.println(value);
      }
    }
  }

  /*
   * Modifica un elemento del array.
   */
  public static void modifyElement(int[] numbers, Scanner scanner) {
    System.out.print("Ingresa la posición del elemento a modificar: ");

    int index = scanner.nextInt();

    if (index >= 0 && index < numbers.length) {
      System.out.print("Ingresa el nuevo valor: ");
      numbers[index] = scanner.nextInt();

      System.out.println("El elemento se modificó correctamente!!");
    } else {
      System.out.println("La posición del elemento es incorrecto!!");
    }
  }

  /*
   * Elimina un elemento del array.
   */
  public static void deleteElement(int[] numbers, Scanner scanner) {
    System.out.print("Ingresa la posición del elemento a eliminar: ");

    int index = scanner.nextInt();

    if (index >= 0 && index < numbers.length) {
      for (int i = index; i < numbers.length - 1; i++) {
        numbers[i] = numbers[i + 1];
      }

      System.out.println("El elemento se eliminó correctamente.");
    }
    else {
      System.out.println("La posición del elemento es incorrecto!!");
    }
  }

  /*
   * Ordena los elementos del array con el método de burbuja.
   */
  public static void bubbleSort(int[] numbers) {
    int temp = 0;

    for (int i = 0; i < numbers.length - 1; i++) {
      for (int j = i + 1; j < numbers.length; j++) {
        // Ordena de mayor a menor.
        if (numbers[j] > numbers[i]) {
          temp = numbers[i];
          numbers[i] = numbers[j];
          numbers[j] = temp;
        }
      }
    }

    System.out.println("El array se ordenó correctamente!!");
    displayArray(numbers);
  }
}
