class Student {
  private int id;
  private String name;
  private String dni;

  public Student(int id, String name, String dni) {
    this.id = id;
    this.name = name;
    this.dni = dni;
  }

  public int getId() {
    return id;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getName() {
    return name;
  }

  public void setDni(String dni) {
    this.dni = dni;
  }

  public String getDni() {
    return dni;
  }

  @Override
  public String toString() {
    return "Student{" +
        "id=" + id +
        ", name='" + name + '\'' +
        ", dni='" + dni + "'}";
  }
}
