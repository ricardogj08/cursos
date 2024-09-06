package proyecto.exception;

public enum ErrorMessages {
  STUDENT_NOT_FOUND("Student with DNI '%s' not found"),
  DUPLICATE_STUDENT("Student with DNI '%s' and name '%s' already exists"),
  BOOK_NOT_FOUND("Book with ISBN '%s' not found"),
  DUPLICATE_BOOK("Book with ISBN '%s' and title '%s' already exists"),
  DUPLICATE_LOAN("Loan already exists for Book ISBN '%s' and Student DNI '%s'"),
  LOAN_NOT_FOUND("Loan not found with ID '%s'");

  private String messageFormat;

  // Constructor que se dispara al utilizar una constante.
  ErrorMessages(String messageFormat) {
    this.messageFormat = messageFormat;
  }

  // Permite construir el mensaje del error. 
  public String formatMessage(Object... args) {
    return String.format(messageFormat, args);
  }
}
