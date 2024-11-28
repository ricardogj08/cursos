package proyecto.model;

import java.util.UUID;
import java.time.LocalDate;

// Registra las transacciones de prestamos.
public class Loan {
  private String id; // ID del préstamo.
  private Book book; // Libro prestado.
  private Student student; // Estudiante que pidió el préstamo.
  private LocalDate loanDate; // Fecha de préstamo.
  private LocalDate returnDate; // Fecha de devolución.
  private boolean isLoan; // Comprueba si el libro está prestado.

  public Loan(Book book, Student student, boolean isLoan) {
    this.id = UUID.randomUUID().toString();
    this.book = book;
    this.student = student;
    this.isLoan = isLoan;
    this.loanDate = LocalDate.now();
    this.returnDate = loanDate.plusDays(7);
  }

  public String getId() {
    return id;
  }

  public Book getBook() {
    return book;
  }

  public Student getStudent() {
    return student;
  }

  public boolean getIsLoan() {
    return isLoan;
  }

  public LocalDate getLoanDate() {
    return loanDate;
  }

  public LocalDate getReturnDate() {
    return returnDate;
  }

  @Override
  public String toString() {
    return "Loan{" +
        "id='" + id + '\'' +
        ", book=" + book +
        ", student=" + student +
        ", loanDate=" + loanDate +
        ", returnDate=" + returnDate +
        ", isLoan=" + isLoan + "'}";
  }
}
