class Main {
  public static void main(String[] args) {
    Manager manager = new Manager("John Dae", 100, 100000);
    Developer developer = new Developer("Alice Smith", 101, 40, 2.4);

    System.out.println(manager);
    System.out.println("Salario: " + manager.calculateSalary() + "\n");

    System.out.println(developer);
    System.out.println("Salario: " + developer.calculateSalary());
  }
}
