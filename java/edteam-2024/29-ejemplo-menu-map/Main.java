import java.util.Scanner;
import java.util.Map;
import java.util.HashMap;

class Main {
  // Atributos que pertenecen a la clase y
  // no a las instancias individuales de los objetos.
  private static Scanner scanner = new Scanner(System.in);
  private static Map<Integer, Student> studentsMap = new HashMap<>();

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

  // Agrega un nuevo estudiante al mapa.
  private static void addStudent() {
    String name = "", dni = "";

    // Captura el nombre del nuevo estudiante.
    do {
      System.out.print("Ingresa el nombre del estudiante: ");
      name = scanner.nextLine();

      // Valida que el nombre sea único.
      if (!containsStudentByName(name))
        break;

      System.out.println("El nombre del estudiante ya se encuentra registrado!!");

    } while (true);

    // Captura el DNI del nuevo estudiante.
    do {
      System.out.print("Ingresa el DNI del estudiante: ");
      dni = scanner.nextLine();

      // Valida que el DNI sea único.
      if (!containsStudentByDni(dni))
        break;

      System.out.println("El DNI del estudiante ya se encuentra registrado!!");
    } while (true);

    int studentId = generateUniqueId();

    // Almacena la información del nuevo estudiante.
    studentsMap.put(studentId, new Student(studentId, name, dni));

    System.out.println("La información del estudiante se registró correctamente!!");
  }

  // Elimina un estudiante registrado utilizando su DNI.
  private static void removeStudent() {}

  // Muestra todos los estudiantes registrados.
  private static void listStudents() {
    studentsMap.values().forEach(System.out::println);
  }

  // Filtra el mapa de estudiantes por nombre.
  private static void filterStudentsByName() {}

  // Modifica la información del estudiante desde su DNI.
  private static void modifyStudent() {}

  // Filtra el mapa de estudiantes por nombre con letra "A".
  private static void filterStudentsByLetterA() {}

  // Valida si el nombre del estudiante existe en el mapa.
  private static boolean containsStudentByName(String name) {
    return studentsMap.values().stream()
      .anyMatch(student -> student.getName().equalsIgnoreCase(name));
  }

  // Valida si el DNI del estudiante existe en el mapa.
  private static boolean containsStudentByDni(String dni) {
    return studentsMap.values().stream()
      .anyMatch(student -> student.getDni().equals(dni));
  }

  // Genera un ID único para el estudiante.
  private static int generateUniqueId() {
    return studentsMap.size() + 1;
  }
}
