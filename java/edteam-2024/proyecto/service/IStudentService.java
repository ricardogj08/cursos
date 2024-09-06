package proyecto.service;

import proyecto.model.Student;
import java.util.List;
import java.util.Optional;

// Lógica de negocio de los estudiantes.
public interface IStudentService {
  void registerStudent(Student student);
  List<Student> getAllStudents();
  Optional<Student> findStudentByDni(String dni);
}
