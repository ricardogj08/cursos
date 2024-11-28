package proyecto.service.implement;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import proyecto.service.IBookService;
import proyecto.model.Book;
import proyecto.exception.ErrorMessages;
import proyecto.exception.DuplicateBookException;
import proyecto.exception.BookNotFoundException;

// Implementa la lógica de negocio de los libros.
public class BookServiceImpl implements IBookService {
  // Crea una lista vacía de libros.
  private List<Book> books = new ArrayList<>();

  // Registra un nuevo libro.
  @Override
  public void registerBook(Book book) {
    // Consulta si el libro se encuentra en la lista.
    boolean isDuplicateBook = books.stream()
      .anyMatch(existingBook -> existingBook.getIsbn().equals(book.getIsbn()));
    
    // Comprueba que el ISBN sea único.
    if (isDuplicateBook) {
      String errorMessage = ErrorMessages.DUPLICATE_BOOK.formatMessage(book.getTitle(), book.getIsbn());
      throw new DuplicateBookException(errorMessage);
    }

    // Registra la información del nuevo libro en la lista.
    books.add(book);
  }

  // Retorna la lista de todos los libros registrados.
  @Override
  public List<Book> getAllBooks() {
    return books;
  }

  // Consulta la información de un libro desde su ISBN.
  @Override
  public Optional<Book> findBookByIsbn(String isbn) {
    // Consulta si el libro se encuentra en la lista.
    Optional<Book> bookToFind = books.stream()
      .filter(book -> book.getIsbn().equals(isbn))
      .findFirst();
    
    // Comprueba si el libro existe.
    if (bookToFind.isEmpty()) {
      String errorMessage = ErrorMessages.BOOK_NOT_FOUND.formatMessage(isbn);
      throw new BookNotFoundException(errorMessage);
    }

    return bookToFind;
  }
}
