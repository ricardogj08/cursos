import java.util.HashMap;
import java.util.Map;

class Main {
  public static void main(String[] args) {
    // Crea un mapa vacío de estudiantes.
    Map<Integer, Student> studentsMap = new HashMap<>();

    // Agrega nuevos estudiantes al mapa donde
    // la llave del mapa es el ID del estudiante.
    studentsMap.put(100, new Student(100, "Alice"));
    studentsMap.put(101, new Student(101, "Bob"));
    studentsMap.put(102, new Student(102, "Charlie"));

    // Muestra el mapa de estudiantes original.
    System.out.println("=> Mapa de estudiantes original\n" + studentsMap);

    // Itera sobre cada elemento del mapa de estudiantes.
    for (Student student : studentsMap.values()) {
      System.out.println(student);
    }

    int studentIdToModify = 101;

    // Valida si la llave del estudiante existe en el mapa de estudiantes.
    if (studentsMap.containsKey(studentIdToModify)) {
      // Modifica el nombre de un estudiante dentro del mapa de estudiantes.
      studentsMap.put(studentIdToModify, new Student(studentIdToModify, "Robert"));
      System.out.println("=> Estudiante modificado\n" + studentsMap.get(studentIdToModify));
    } else {
      System.out.println("=> El estudiante a modificar con el ID '" + studentIdToModify + "' no existe");
    }

    System.out.println("=> Mapa de estudiantes modificado");
    for (Student student : studentsMap.values()) {
      System.out.println(student);
    }

    // Filtra los estudiantes que en su nombre comienzan con la letra "A".
    System.out.println("=> Estudiantes que en su nombre comienzan con la letra 'A'");
    for (Student student : studentsMap.values()) {
      if (student.getName().startsWith("A")) {
        System.out.println(student);
      }
    }

    // Filtra los estudiantes que en su nombre contienen la letra "A" o "a".
    System.out.println("=> Estudiantes que en su nombre contienen la letra 'A' o 'a'");
    for (Student student : studentsMap.values()) {
      if (student.getName().toLowerCase().contains("a")) {
        System.out.println(student);
      }
    }

    int studentIdToRemove = 100;

    // Valida si la llave del estudiante existe en el mapa de estudiantes.
    if (studentsMap.containsKey(studentIdToRemove)) {
      // Elimina un estudiante del conjunto.
      Student removedStudent = studentsMap.remove(studentIdToRemove);
      System.out.println("=> Estudiante eliminado\n" + removedStudent);
    } else {
      System.out.println("=> El estudiante a eliminar con el ID '" + studentIdToRemove + "' no existe");
    }

    System.out.println("=> Mapa de estudiantes modificado después de la eliminación");
    for (Student student : studentsMap.values()) {
      System.out.println(student);
    }
  }  
}
