import java.util.ArrayList;
import java.util.List;
import java.util.Comparator;

class Main {
  public static void main(String[] args) {
    // Crea una lista vacía de estudiantes.
    List<Student> studentsList = new ArrayList<>();

    // Agrega nuevos estudiantes a la lista.
    studentsList.add(new Student(100, "Alice"));
    studentsList.add(new Student(101, "Bob"));
    studentsList.add(new Student(102, "Charlie"));

    // Muestra la lista de estudiantes original.
    System.out.println("=> Lista de estudiantes original\n" + studentsList);

    // Agrega un nuevo estudiante a la lista.
    studentsList.add(new Student(103, "David"));

    // Muestra la lista de estudiantes modificada con el nuevo estudiante "David".
    System.out.println("=> Lista de estudiantes modificada\n" + studentsList);

    // Elimina un estudiante de la lista dada una condición.
    studentsList.removeIf(student -> student.getId() == 101);

    // Muestra la lista de estudiantes modificada sin el estudiante "Bob".
    System.out.println("=> Lista de estudiantes modificada sin el estudiante 'Bob'\n" + studentsList);

    // Filtra los estudiantes que en su nombre contienen la letra "l".
    List<Student> filteredList = new ArrayList<>();
    for (Student student : studentsList) {
      if (student.getName().contains("l")) {
        filteredList.add(student);
      }
    }

    // Muestra la lista de estudiantes que en su nombre contienen la letra "l".
    System.out.println("=> Lista de estudiantes que en su nombre contienen la letra 'l'\n" + filteredList);

    // Ordena la lista de estudiantes por nombre descendente.
    studentsList.sort(Comparator.comparing(Student::getName, Comparator.reverseOrder()));
    System.out.println("=> Lista de estudiantes ordenada por nombre descendente\n" + studentsList);

    // Modifica el nombre de un estudiante dentro de la lista de estudiantes.
    Student studentToModify = studentsList.get(0); // Obtiene el estudiante de la posición "0".
    System.out.println("=> Estudiante a modificar\n" + studentToModify);

    // Valida si la información del estudiante existe en la lista de estudiantes.
    if (studentToModify != null) {
      studentToModify = new Student(studentToModify.getId(), "Alicia");
      System.out.println("=> Nueva información del estudiante modificador\n" + studentsList);
    }
  }
}
