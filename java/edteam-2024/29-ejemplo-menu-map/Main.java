import java.util.Scanner;
import java.util.Map;
import java.util.HashMap;

class Main {
  // Atributos que pertenecen a la clase y
  // no a las instancias individuales de los objetos.
  private static Scanner scanner = new Scanner(System.in);
  private static Map<Integer, Student> studentsList = new HashMap<>();

  public static void main(String[] args) {
    int option = 0;

    do {
      displayMenu();

      System.out.print("Selecciona una opción: ");
      option = scanner.nextInt();
      scanner.nextLine(); // Limpia el buffer del scanner.

      switch (option) {
        case 1:
          addStudent();
          break;
        case 2:
          removeStudent();
          break;
        case 3:
          listStudents();
          break;
        case 4:
          filterStudentsByName();
          break;
        case 5:
          modifyStudent();
          break;
        case 6:
          filterStudentsByLetterA();
          break;
        case 7:
          System.out.println("Saliendo del programa!!");
          break;
        default:
          System.out.println("Opción no válida!!");
      }
    } while (option != 7);

    scanner.close();
  }

  // Muestra el menú de opciones.
  private static void displayMenu() {
    System.out.println("\n---- Menú de opciones ----");
    System.out.println("1. Agregar Estudiante");
    System.out.println("2. Eliminar Estudiante");
    System.out.println("3. Listar Estudiantes");
    System.out.println("4. Filtrar Estudiantes por Nombre");
    System.out.println("5. Modificar Estudiante");
    System.out.println("6. Filtrar Estudiantes por Nombre con letra 'A'");
    System.out.println("7. Salir");
  }

  private static void addStudent() {}
  private static void removeStudent() {}
  private static void listStudents() {}
  private static void filterStudentsByName() {}
  private static void modifyStudent() {}
  private static void filterStudentsByLetterA() {}
}
