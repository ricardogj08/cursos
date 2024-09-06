package proyecto.service.implement;

import java.util.ArrayList;
import java.util.List;
import java.time.LocalDate;
import java.util.Optional;
import proyecto.service.ILoanService;
import proyecto.model.Loan;
import proyecto.exception.ErrorMessages;
import proyecto.exception.DuplicateLoanException;
import proyecto.exception.LoanNotFoundException;
import proyecto.exception.StudentNotFoundException;
import proyecto.model.LoanReport;

// Implementa la lógica de negocio de los prestamos de libros.
public class LoanServiceImpl implements ILoanService {
  // Crea una lista vacía de prestamos.
  private List<Loan> loans = new ArrayList<>();

  // Registra un nuevo préstamo.
  @Override
  public void registerLoan(Loan loan) {
    boolean isDuplicateLoan = loans.stream()
      .anyMatch(existingLoan -> existingLoan.getBook().equals(loan.getBook())
        && existingLoan.getStudent().equals(loan.getStudent())
        && existingLoan.getIsLoan());

    /*
     * Comprueba que el registro del préstamo sea único,
     * no permite el mismo registro del libro con el estudiante
     * y que esté en préstamo.
     */
    if (isDuplicateLoan) {
      String errorMessage = ErrorMessages.DUPLICATE_LOAN.formatMessage(loan.getBook().getIsbn(), loan.getStudent().getDni());
      throw new DuplicateLoanException(errorMessage);
    }

    // Registra la información del nuevo préstamo.
    loans.add(loan);
  }

  // Retorna la lista de todos los prestamos registrados.
  @Override
  public List<Loan> listLoans() {
    return loans;
  }

  // Filtra todos los prestamos dado un rango de fechas.
  @Override
  public List<Loan> getLoansByDateRange(LocalDate startDate, LocalDate endDate) {
    return loans.stream()
        .filter(loan -> loan.getLoanDate().isAfter(startDate) && loan.getLoanDate().isBefore(endDate))
        .toList();
  }

  // Filtra todos los prestamos de un estudiante desde su DNI.
  @Override
  public List<Loan> filterLoansByDniStudent(String studentDni) {
    return loans.stream()
      .filter(loan -> loan.getStudent().getDni().equals(studentDni))
      .toList();
  }

  // Genera los reportes de prestamos de libros dado un rango de fechas.
  @Override
  public List<LoanReport> filterLoansByDateRange(LocalDate startDate, LocalDate endDate) {
    return loans.stream()
      .filter(loan -> (loan.getLoanDate().isEqual(startDate) || loan.getLoanDate().isAfter(startDate))
          && (loan.getLoanDate().isEqual(endDate) || loan.getLoanDate().isBefore(endDate)))
      .map(loan -> new LoanReport(
        loan.getBook().getTitle(),
        loan.getLoanDate(),
        loan.getReturnDate(),
        loan.getStudent().getName()
      ))
      .toList();
  }

  // Consulta la información de un préstamo desde su ID.
  @Override
  public Optional<Loan> findLoanById(String id) {
    // Consulta si el préstamo se encuentra en la lista.
    Optional<Loan> loanToFind = loans.stream()
      .filter(loan -> loan.getId().equals(id))
      .findFirst();

    // Comprueba si el préstamo existe.
    if (loanToFind.isEmpty()) {
      String errorMessage = ErrorMessages.LOAN_NOT_FOUND.formatMessage(id);
      throw new LoanNotFoundException(errorMessage);
    }

    return loanToFind;
  }

  // Retorna la lista de todos los prestamos registrados.
  @Override
  public List<Loan> getAllLoans() {
    return loans;
  }
}
