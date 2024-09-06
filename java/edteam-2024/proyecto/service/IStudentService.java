package proyecto.service;

import java.util.List;
import java.util.Optional;
import proyecto.model.Student;

// Lógica de negocio de los estudiantes.
public interface IStudentService {
  void registerStudent(Student student);
  List<Student> getAllStudents();
  Optional<Student> findStudentByDni(String dni);
}
