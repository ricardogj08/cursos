import java.util.Scanner;
import java.util.List;
import java.util.ArrayList;
import java.util.Comparator;

class Main {
  // Atributos que pertenecen a la clase y
  // no a las instancias individuales de los objetos.
  private static Scanner scanner = new Scanner(System.in);
  private static List<Student> studentsList = new ArrayList<>();

  public static void main(String[] args) {
    int option = 0;

    do {
      displayMenu();

      System.out.print("Selecciona una opción: ");
      option = scanner.nextInt();
      scanner.nextLine(); // Limpia el buffer del scanner.

      switch(option) {
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
          sortStudentsByName();
          break;
        case 6:
          modifyStudent();
          break;
        case 7:
          System.out.println("Saliendo del programa!!");
          break;
        default:
          System.out.println("Opción no válida!!");
      }
    } while(option != 7);

    scanner.close();
  }

  // Muestra el menú de opciones.
  private static void displayMenu() {
    System.out.println("\n---- Menú de opciones ----");
    System.out.println("1. Agregar Estudiante");
    System.out.println("2. Eliminar Estudiante");
    System.out.println("3. Listar Estudiantes");
    System.out.println("4. Filtrar Estudiantes por Nombre");
    System.out.println("5. Ordenar Estudiantes por Nombre");
    System.out.println("6. Modificar Estudiante");
    System.out.println("7. Salir");
  }

  // Agrega un nuevo estudiante a la lista.
  private static void addStudent() {
    String name = "", dni = "";

    // Captura el nombre del nuevo estudiante.
    do {
      System.out.print("Ingresa el nombre del estudiante: ");
      name = scanner.nextLine();

      // Valida que el nombre sea único.
      if (! containsStudentByName(name)) break;

      System.out.println("El nombre del estudiante ya se encuentra registrado!!");
      
    } while(true);

    // Captura el DNI del nuevo estudiante.
    do {
      System.out.print("Ingresa el DNI del estudiante: ");
      dni = scanner.nextLine();

      // Valida que el DNI sea único.
      if (! containsStudentByDni(dni)) break;

      System.out.println("El DNI del estudiante ya se encuentra registrado!!");
    } while(true);

    // Almacena la información del nuevo estudiante.
    studentsList.add(new Student(generateUniqueId(), name, dni));

    System.out.println("La información del estudiante se registró correctamente!!");
  }

  // Elimina un estudiante registrado utilizando su DNI.
  private static void removeStudent() {
    System.out.print("Ingresa el DNI del estudiante: ");

    String dni = scanner.nextLine();

    // Elimina el estudiante de la lista de estudiantes.
    boolean removedStudent = studentsList.removeIf(student -> student.getDni().equals(dni));

    // Valida si existió el estudiante dentro de la lista.
    if (removedStudent) {
      System.out.println("El estudiante se ha eliminado correctamente!!");
    } else {
      System.out.println("No se encuentra el estudiante que desea eliminar!!");
    }
  }

  // Muestra todos los estudiantes registrados.
  private static void listStudents() {
    System.out.println(studentsList);
  }

  // Filtra la lista de estudiantes por nombre.
  private static void filterStudentsByName() {
    System.out.print("Ingresa el parámetro de búsqueda: ");

    String filterSearch = scanner.nextLine();

    // Almacena los estudiantes filtrados.
    List<Student> filteredStudents = new ArrayList<>();

    for (Student student : studentsList) {
      if (student.getName().toLowerCase().contains(filterSearch.toLowerCase())) {
        filteredStudents.add(student);
      }
    }

    System.out.println("=> Estudiantes filtrados\n" + filteredStudents);
  }

  // Ordena la lista de estudiantes por nombre.
  private static void sortStudentsByName() {
    studentsList.sort(Comparator.comparing(Student::getName));

    System.out.println("=> Lista ordenada por nombre\n" + studentsList);
  }

  // Modifica la información del estudiante desde su DNI.
  private static void modifyStudent() {
    System.out.print("Ingresa el DNI del estudiante a modificar: ");
    String dniSearch = scanner.nextLine();

    Student studentToModify = findStudentByDni(dniSearch);

    // Valida si el estudiante se encuentra en la lista.
    if (studentToModify == null) {
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

    // Modifica la información del estudiante por referencia.
    studentToModify.setName(newName);
    studentToModify.setDni(newDni);

    System.out.println("El estudiante se ha modificado correctamente!!");
  }

  // Obtiene la información de un estudiante desde su DNI.
  private static Student findStudentByDni(String dni) {
    for (Student student : studentsList) {
      if (student.getDni().equals(dni)) {
        return student;
      }
    }

    return null;
  }

  // Valida si el nombre del estudiante existe en la lista.
  private static boolean containsStudentByName(String name) {
    for (Student student : studentsList) {
      if (student.getName().equalsIgnoreCase(name)) {
        return true;
      }
    }

    return false;
  }

  // Valida si el DNI del estudiante existe en la lista.
  private static boolean containsStudentByDni(String dni) {
    for (Student student : studentsList) {
      if (student.getDni().equals(dni)) {
        return true;
      }
    }

    return false;
  }

  // Genera un ID único para el estudiante.
  private static int generateUniqueId() {
    return studentsList.size() + 1;
  }
}
