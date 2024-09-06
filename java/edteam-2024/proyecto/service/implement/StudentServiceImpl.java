package proyecto.service.implement;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import proyecto.service.IStudentService;
import proyecto.model.Student;
import proyecto.exception.ErrorMessages;
import proyecto.exception.DuplicateStudentException;
import proyecto.exception.StudentNotFoundException;

// Implementa la lógica de negocio de los estudiantes.
public class StudentServiceImpl implements IStudentService {
  // Crea una lista vacía de estudiantes.
  private List<Student> students = new ArrayList<>();

  // Registra un nuevo estudiante.
  @Override
  public void registerStudent(Student student) {
    // Consulta si el estudiante se encuentra en la lista.
    boolean isDuplicateStudent = students.stream()
      .anyMatch(existingStudent -> existingStudent.getDni().equals(student.getDni())
        && existingStudent.getName().equals(student.getName()));

    // Comprueba que el DNI y el nombre del estudiante sean únicos.
    if (isDuplicateStudent) {
      String errorMessage = ErrorMessages.DUPLICATE_STUDENT.formatMessage(student.getDni(), student.getName());
      throw new DuplicateStudentException(errorMessage);
    }

    // Registra la información del nuevo estudiante.
    students.add(student);
  }
 
  // Retorna la lista de todos los estudiantes registrados.
  @Override
  public List<Student> getAllStudents() {
    return students;
  }

  // Consulta la información de un estudiante desde su DNI.
  @Override
  public Optional<Student> findStudentByDni(String dni) {
    // Consulta si el estudiante se encuentra en la lista.
    Optional<Student> studentToFind = students.stream()
        .filter(student -> student.getDni().equals(dni))
        .findFirst();

    // Comprueba si el estudiante existe.
    if (studentToFind.isEmpty()) {
      String errorMessage = ErrorMessages.STUDENT_NOT_FOUND.formatMessage(dni);
      throw new StudentNotFoundException(errorMessage);
    }

    return studentToFind;
  }
}
