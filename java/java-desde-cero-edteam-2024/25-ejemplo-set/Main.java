import java.util.Set;
import java.util.HashSet;

class Main {
  public static void main(String[] args) {
    // Crea un conjunto vacío de estudiantes.
    Set<Student> studentsSet = new HashSet<>();

    // Agrega nuevos estudiantes al conjunto.
    studentsSet.add(new Student(100, "Alice"));
    studentsSet.add(new Student(101, "Bob"));
    studentsSet.add(new Student(102, "Charlie"));

    // Muestra el conjunto de estudiantes original.
    System.out.println("=> Conjunto de estudiantes original\n" + studentsSet);

    // Agrega un nuevo estudiante al conjunto.
    studentsSet.add(new Student(103, "David"));

    // No permite información duplicada.
    //studentsSet.add(new Student(103, "David"));

    // Muestra el conjunto de estudiantes modificada con el nuevo estudiante "David".
    System.out.println("=> Conjunto de estudiantes modificada\n" + studentsSet);

    // Elimina un estudiante del conjunto dada una condición.
    studentsSet.removeIf(student -> student.getId() == 101);

    // Muestra el conjunto de estudiantes modificada sin el estudiante "Bob".
    System.out.println("=> Conjunto de estudiantes modificada sin el estudiante 'Bob'\n" + studentsSet);

    // Filtra los estudiantes que en su nombre contienen la letra "l".
    Set<Student> filteredSet = new HashSet<>();
    for (Student student : studentsSet) {
      if (student.getName().contains("l")) {
        filteredSet.add(student);
      }
    }

    // Muestra el conjunto de estudiantes que en su nombre contienen la letra "l".
    System.out.println("=> Conjunto de estudiantes que en su nombre contienen la letra 'l'\n" + filteredSet);
  }
}
