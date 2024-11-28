package proyecto.model;

import java.time.LocalDate;

// Genera el reporte de préstamo del libro.
public record LoanReport (
  String title,
  LocalDate loanDate,
  LocalDate returnDate,
  String studentName
) {}
