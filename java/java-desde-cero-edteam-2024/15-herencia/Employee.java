// Clase padre.
abstract class Employee {
  private String name;
  private int id;

  public Employee(String name, int id) {
    this.name = name;
    this.id = id;
  }

  public abstract double calculateSalary();

  @Override
  public String toString() {
    return "Employee{" +
      "name='" + name + '\'' +
      ", id=" + id + '}';
  }
}
