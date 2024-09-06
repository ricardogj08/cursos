package proyecto.service;

import proyecto.model.Book;
import java.util.List;
import java.util.Optional;

// Lógica de negocio de los libros.
public interface IBookService {
  void registerBook(Book book);
  List<Book> getAllBooks();
  Optional<Book> findBookByIsbn(String isbn);
}
