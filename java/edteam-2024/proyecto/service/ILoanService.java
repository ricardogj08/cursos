package proyecto.service;

import java.util.List;
import proyecto.model.Loan;
import proyecto.model.LoanReport;
import java.time.LocalDate;

// Lógica de negocio de los prestamos de libros.
public interface ILoanService {
  void registerLoan(Loan loan);
  List<Loan> listLoans();
  List<Loan> filterLoansByDniStudent(String studentDni);
  List<LoanReport> reportLoans(LocalDate startDate, LocalDate endDate);
}
