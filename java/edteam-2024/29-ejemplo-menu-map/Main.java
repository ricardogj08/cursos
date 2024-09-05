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
    System.out.println("6. Filtrar Estudiantes por Nombre con letra 'A' o 'a'");
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
      if (! containsStudentByName(name)) break;

      System.out.println("El nombre del estudiante ya se encuentra registrado!!");

    } while (true);

    // Captura el DNI del nuevo estudiante.
    do {
      System.out.print("Ingresa el DNI del estudiante: ");
      dni = scanner.nextLine();

      // Valida que el DNI sea único.
      if (! containsStudentByDni(dni)) break;

      System.out.println("El DNI del estudiante ya se encuentra registrado!!");
    } while (true);

    int studentId = generateUniqueId();

    // Almacena la información del nuevo estudiante.
    studentsMap.put(studentId, new Student(studentId, name, dni));

    System.out.println("La información del estudiante se registró correctamente!!");
  }

  // Elimina un estudiante registrado utilizando su ID.
  private static void removeStudent() {
    System.out.print("Ingresa el ID del estudiante: ");

    int studentIdToRemove = scanner.nextInt();
    scanner.nextLine(); // Limpia el buffer.

    // Valida si el estudiante se encuentra en el mapa.
    if (studentsMap.containsKey(studentIdToRemove)) {
      Student removedStudent = studentsMap.remove(studentIdToRemove);
      System.out.println("El estudiante se ha eliminado correctamente!!\n" + removedStudent);
    } else {
      System.out.println("No se encuentra el estudiante que deseas eliminar!!");
    }
  }

  // Muestra todos los estudiantes registrados.
  private static void listStudents() {
    studentsMap.values().forEach(System.out::println);
  }

  // Filtra el mapa de estudiantes por nombre.
  private static void filterStudentsByName() {
    System.out.print("Ingresa el parámetro de búsqueda por nombre: ");

    String filterSearch = scanner.nextLine();

    for (Student student : studentsMap.values()) {
      if (student.getName().equalsIgnoreCase(filterSearch)) {
        System.out.println(student);
      }
    }
  }

  // Modifica la información del estudiante desde su ID.
  private static void modifyStudent() {
    System.out.print("Ingresa el ID del estudiante a modificar: ");

    int studentIdToModify = scanner.nextInt();
    scanner.nextLine(); // Limpia el buffer

    // Valida si el estudiante se encuentra en el mapa.
    if (! studentsMap.containsKey(studentIdToModify)) {
      System.out.println("No se encuentra el estudiante que deseas modificar!!");
      return;
    }

    String newName = "", newDni = "";

    // Captura el nuevo nombre del estudiante.
    do {
      System.out.print("Ingresa el nuevo nombre del estudiante: ");
      newName = scanner.nextLine();

      // Valida que el nombre sea único.
      if (! containsStudentByName(newName)) break;

      System.out.println("El nombre del estudiante ya se encuentra registrado!!");
    } while(true);

    // Captura el nuevo DNI del estudiante.
    do {
      System.out.print("Ingresa el nuevo DNI del estudiante: ");
      newDni = scanner.nextLine();

      // Valida que el DNI sea único.
      if (! containsStudentByDni(newDni)) break;

      System.out.println("El DNI del estudiante ya se encuentra registrado!!");
    } while(true);

    // Modifica la información del estudiante.
    studentsMap.put(studentIdToModify, new Student(studentIdToModify, newName, newDni));

    System.out.println("El estudiante se ha modificado correctamente!!");
  }

  // Filtra el mapa de estudiantes por nombre con letra "A" o "a".
  private static void filterStudentsByLetterA() {
    System.out.println("=> Estudiantes filtrados por nombre que contienen 'A' o 'a'");

    for (Student student : studentsMap.values()) {
      if (student.getName().toLowerCase().contains("a")) {
        System.out.println(student);
      }
    }
  }

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
