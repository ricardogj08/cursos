package proyecto.service;

import java.util.List;
import java.time.LocalDate;
import java.util.Optional;
import proyecto.model.Loan;
import proyecto.model.LoanReport;
import proyecto.model.Student;

// Lógica de negocio de los prestamos de libros.
public interface ILoanService {
  void registerLoan(Loan loan);
  List<Loan> listLoans();
  List<Loan> getLoansByDateRange(LocalDate startDate, LocalDate endDate);
  List<Loan> filterLoansByDniStudent(String studentDni);
  List<LoanReport> filterLoansByDateRange(LocalDate startDate, LocalDate endDate);
  Optional<Loan> findLoanById(String id);
  List<Loan> getAllLoans();
}
