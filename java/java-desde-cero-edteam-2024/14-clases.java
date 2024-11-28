class Book {
  private String title;
  private String author;
  private int year;

  // Constructor.
  public Book(String title, String author, int year) {
    this.title = title;
    this.author = author;
    this.year = year;
  }

  public String getTitle() {
    return this.title;
  }

  public String getAuthor() {
    return this.author;
  }

  public int getYear() {
    return this.year;
  }

  @Override
  public String toString() {
    return "Book{" +
      "title='" + title + '\'' +
      ", author='" + author + '\'' +
      ", year=" + year + '}';
  }
}

class Main {
  public static void main(String[] args) {
    Book bookOne = new Book("Java", "John Doe", 2022);
    Book bookTwo = new Book("Python", "Jane Smith", 2021);

    System.out.println(bookOne);
    System.out.println(bookTwo);
  }
}
