package proyecto;

import proyecto.service.implement.BookServiceImpl;
import proyecto.service.implement.StudentServiceImpl;
import proyecto.service.implement.LoanServiceImpl;
import proyecto.service.IBookService;
import proyecto.service.IStudentService;
import proyecto.service.ILoanService;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/*
 * Sistema en terminal de prestamos de libros
 * para estudiantes.
 */
public class Main {
  private static final BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

  public static void main(String[] args) {
    int option = 0;

    IBookService bookService = new BookServiceImpl();
    IStudentService studentService = new StudentServiceImpl();
    ILoanService loanService = new LoanServiceImpl();

    displayMenu();
  }

  // Muestra el menú de opciones.
  private static void displayMenu() {
    System.out.println("\n---- Menú de opciones ----");
    System.out.println("1. Registrar Libro");
    System.out.println("2. Listar Libros");
    System.out.println("3. Buscar Libro por ISBN");
    System.out.println("4. Registrar Estudiante");
    System.out.println("5. Listar Estudiantes");
    System.out.println("6. Buscar Estudiante por DNI");
    System.out.println("7. Registrar Préstamo");
    System.out.println("8. Listar Préstamos por Rango de Fecha");
    System.out.println("9. Listar Préstamos por Estudiante");
    System.out.println("0. Salir");
  }

  private static int getInputOption(){
    return 0;
  }
}
