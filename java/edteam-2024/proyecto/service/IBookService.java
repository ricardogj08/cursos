package proyecto.service;

import java.util.List;
import java.util.Optional;
import proyecto.model.Book;

// Lógica de negocio de los libros.
public interface IBookService {
  void registerBook(Book book);
  List<Book> getAllBooks();
  Optional<Book> findBookByIsbn(String isbn);
}
