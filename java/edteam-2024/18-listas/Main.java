import java.util.List;
import java.util.ArrayList;

class Main {
  public static void main(String[] args) {
    List<Student> students = new ArrayList<>();

    // Agrega nuevos elementos.
    students.add(new Student(100, "Henry"));
    students.add(new Student(101, "Bob"));
    students.add(new Student(102, "Alice"));

    System.out.println("=> Lista original");

    for (Student student : students) {
      System.out.println(student);
    }

    // Elimina un elemento dada una condición.
    students.removeIf(student -> student.getId() == 101);

    System.out.println("=> Lista modificada");

    for (Student student : students) {
      System.out.println(student);
    }
  }
}
