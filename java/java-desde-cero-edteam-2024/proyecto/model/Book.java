package proyecto.model;

public class Book {
  private String title;
  private String author;
  private short year;
  private String isbn;

  public Book(String title, String author, short year, String isbn) {
    this.title = title;
    this.author = author;
    this.year = year;
    this.isbn = isbn;
  }

  public String getTitle() {
    return title;
  }

  public String getAuthor() {
    return author;
  }

  public short getYear() {
    return year;
  }

  public String getIsbn() {
    return isbn;
  }

  @Override
  public String toString() {
    return "Book{" +
      "title='" + title + '\'' +
      ", author='" + author + '\'' +
      ", year=" + year +
      ", isbn='" + isbn + "'}";
  }
}
