package proyecto;

import proyecto.service.implement.BookServiceImpl;
import proyecto.service.implement.StudentServiceImpl;
import proyecto.service.implement.LoanServiceImpl;
import proyecto.service.IBookService;
import proyecto.service.IStudentService;
import proyecto.service.ILoanService;
import proyecto.model.Book;
import proyecto.exception.DuplicateBookException;
import proyecto.exception.BookNotFoundException;
import proyecto.model.Student;
import proyecto.exception.DuplicateStudentException;
import proyecto.exception.StudentNotFoundException;
import proyecto.model.Loan;
import proyecto.exception.DuplicateLoanException;
import proyecto.exception.LoanNotFoundException;
import proyecto.model.LoanReport;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Optional;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;

/*
 * Sistema en consola de prestamos de libros
 * para estudiantes.
 *
 * Ejecución: ./run
 */
public class Main {
  private static final BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

  public static void main(String[] args) {
    byte option = 0;

    IBookService bookService = new BookServiceImpl();
    IStudentService studentService = new StudentServiceImpl();
    ILoanService loanService = new LoanServiceImpl();

    do {
      displayMenu();

      option = getInputOption("Selecciona una opción: ");

      switch (option) {
        case 1:
          registerBook(bookService);
          break;
        case 2:
          listAllBooks(bookService);
          break;
        case 3:
          findBookByIsbn(bookService);
          break;
        case 4:
          registerStudent(studentService);
          break;
        case 5:
          listAllStudents(studentService);
          break;
        case 6:
          findStudentByDni(studentService);
          break;
        case 7:
          registerLoan(bookService, studentService, loanService);
          break;
        case 8:
          filterLoansByDateRange(loanService);
          break;
        case 9:
          filterLoansByDniStudent(studentService, loanService);
          break;
        case 10:
          findLoanById(loanService);
          break;
        case 11:
          listAllLoans(loanService);
          break;
        case 0:
          System.out.println("Saliendo del programa!!");
          break;
        default:
          System.out.println("Opción no válida!!");
      }
    } while(option != 0);
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
    System.out.println("10. Buscar Préstamo por ID");
    System.out.println("11. Listar prestamos");
    System.out.println("0. Salir");
  }

  // Lee un número desde la entrada del teclado.
  private static byte getInputOption(String message) {
    System.out.print(message);

    while(true) {
      try {
        return Byte.parseByte(reader.readLine());
      } catch(IOException | NumberFormatException e) {
        System.out.println("Por favor ingresa una opción valida!!");
      }
    }
  }

  // Registra un nuevo libro.
  private static void registerBook(IBookService bookService) {
    try {
      // Captura el título del libro.
      System.out.print("=> Título: ");
      String title = reader.readLine();

      // Captura el autor del libro.
      System.out.print("=> Autor: ");
      String author = reader.readLine();

      // Captura el año del libro.
      System.out.print("=> Año: ");
      short year = Short.parseShort(reader.readLine());

      // Captura el ISBN del libro.
      System.out.print("=> ISBN: ");
      String isbn = reader.readLine();

      // Registra la información del nuevo libro.
      Book newBook = new Book(title, author, year, isbn);
      bookService.registerBook(newBook);

      System.out.println("La información del libro se ha registrado correctamente!!");
    } catch (IOException | NumberFormatException e) {
      System.out.println("Ingresa correctamente la información de registro del nuevo libro!!");
    } catch(DuplicateBookException e) {
      System.out.println(e.getMessage());
    }
  }

  // Lista todos los libros registrados.
  private static void listAllBooks(IBookService bookService) {
    System.out.println("=> Registro de todos los libros");

    List<Book> books = bookService.getAllBooks();
    books.forEach(System.out::println);
  }

  // Consulta la información de un libros desde su ISBN.
  private static void findBookByIsbn(IBookService bookService) {
    try {
      // Captura el ISBN del libro.
      System.out.print("=> ISBN: ");
      String isbnToSearch = reader.readLine();

      // Consulta la información del libro encontrado.
      Optional<Book> foundBook = bookService.findBookByIsbn(isbnToSearch);
      System.out.println(foundBook.get());
    } catch (IOException e) {
      System.out.println("Ingresa correctamente el ISBN de búsqueda del libro!!");
    } catch (BookNotFoundException e) {
      System.out.println(e.getMessage());
    }
  }

  // Registra un nuevo estudiante.
  private static void registerStudent(IStudentService studentService) {
    try {
      // Captura el nombre del estudiante.
      System.out.print("=> Nombre: ");
      String name = reader.readLine();

      // Captura el DNI del estudiante.
      System.out.print("=> DNI: ");
      String dni = reader.readLine();

      // Registra la información del nuevo estudiante.
      Student newStudent = new Student(name, dni);
      studentService.registerStudent(newStudent);

      System.out.println("La información del estudiante se ha registrado correctamente!!");
    } catch (IOException e) {
      System.out.println("Ingresa correctamente la información de registro del nuevo estudiante!!");
    } catch (DuplicateStudentException e) {
      System.out.println(e.getMessage());
    }
  }

  // Lista todos los estudiantes registrados.
  private static void listAllStudents(IStudentService studentService) {
    System.out.println("=> Registro de todos los estudiantes");
    studentService.getAllStudents().forEach(System.out::println);
  }

  // Consulta la información de un estudiante desde su DNI.
  private static void findStudentByDni(IStudentService studentService) {
    try {
      // Captura el DNI del estudiante.
      System.out.print("=> DNI: ");
      String dniToSearch = reader.readLine();

      // Consulta la información del estudiante encontrado.
      Optional<Student> foundStudent = studentService.findStudentByDni(dniToSearch);
      System.out.println(foundStudent.get());
    } catch (IOException e) {
      System.out.println("Ingresa correctamente el DNI de búsqueda del estudiante!!");
    } catch (StudentNotFoundException e) {
      System.out.println(e.getMessage());
    }
  }

  // Registra un nuevo préstamo.
  private static void registerLoan(IBookService bookService,
                                   IStudentService studentService,
                                   ILoanService loanService) {
    try {
      // Captura el ISBN del libro.
      System.out.print("=> ISBN del libro: ");
      String bookIsbn = reader.readLine();

      // Consulta la información del libro.
      Optional<Book> bookToLoanOptional = bookService.findBookByIsbn(bookIsbn);
      Book bookToLoan = bookToLoanOptional.get();

      // Captura el DNI del estudiante.
      System.out.print("=> DNI del estudiante: ");
      String studentDni = reader.readLine();

      // Consulta la información del estudiante.
      Optional<Student> studentOptional = studentService.findStudentByDni(studentDni);
      Student student = studentOptional.get();

      // Registra la información del nuevo préstamo.
      Loan newLoan = new Loan(bookToLoan, student, true);
      loanService.registerLoan(newLoan);
    } catch (IOException e) {
      System.out.println("Ingresa correctamente la información de registro del préstamo!!");
    } catch (BookNotFoundException | StudentNotFoundException | DuplicateLoanException e) {
      System.out.println(e.getMessage());
    }
  }

  // Consulta la información de un préstamo desde su ID.
  private static void findLoanById(ILoanService loanService) {
    try {
      // Captura el ID del préstamo.
      System.out.print("=> ID: ");
      String idToSearch = reader.readLine();

      // Consulta la información del préstamo encontrado.
      Optional<Loan> foundLoan = loanService.findLoanById(idToSearch);
      System.out.println(foundLoan.get());
    } catch (IOException e) {
      System.out.println("Ingresa correctamente el ID de búsqueda del préstamo!!");
    } catch(LoanNotFoundException e) {
      System.out.println(e.getLocalizedMessage());
    }
  }

  // Filtra la lista de prestamos dado un rango de fechas.
  private static void filterLoansByDateRange(ILoanService loanService) {
    try {
      // Captura la fecha de inicio.
      System.out.print("=> Fecha de inicio (YYYY-MM-dd): ");
      String startDateString = reader.readLine();
      LocalDate startDate = LocalDate.parse(startDateString);

      // Captura la fecha de término.
      System.out.print("=> Fecha de término (YYYY-MM-dd): ");
      String endDateString = reader.readLine();
      LocalDate endDate = LocalDate.parse(endDateString);

      // Consulta todos los prestamos del rango de fechas.
      List<LoanReport> loansByDateRange = loanService.filterLoansByDateRange(startDate, endDate);

      System.out.println("=> Prestamos del rango de fechas");
      loansByDateRange.forEach(System.out::println);
    } catch (IOException | DateTimeParseException e) {
      System.out.println(e.getMessage());
    }
  }

  // Filtra la lista de prestamos por DNI del estudiante.
  private static void filterLoansByDniStudent(IStudentService studentService, ILoanService loanService) {
    try {
      // Captura el DNI del estudiante.
      System.out.print("=> DNI: ");
      String dniToSearch = reader.readLine();

      // Consulta la información del estudiante.
      Optional<Student> foundStudent = studentService.findStudentByDni(dniToSearch);
      Student student = foundStudent.get();

      // Consulta todos los prestamos del estudiante.
      List<Loan> loansByStudent = loanService.filterLoansByDniStudent(student.getDni());

      System.out.println("=> Prestamos del estudiante");
      loansByStudent.forEach(System.out::println);
    } catch (IOException e) {
      System.out.println("Ingresa correctamente el DNI de búsqueda del estudiante!!");
    } catch (StudentNotFoundException e) {
      System.out.println(e.getMessage());
    }
  }

  // Lista todos los prestamos registrados.
  private static void listAllLoans(ILoanService loanService) {
    System.out.println("=> Registro de todos los prestamos");
    loanService.getAllLoans().forEach(System.out::println);
  }
}
