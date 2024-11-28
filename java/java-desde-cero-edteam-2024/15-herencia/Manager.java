class Manager extends Employee {
  private double bonus;

  public Manager(String name, int id, double bonus) {
    super(name, id);

    this.bonus = bonus;
  }

  // Implementación del método abstracto.
  public double calculateSalary() {
    return 50000 + bonus;
  }

  public double getBonus() {
    return bonus;
  }

  // Reescribe el método toString() de la clase padre.
  @Override
  public String toString() {
    return super.toString() +
      "\nBonus: $" + bonus;
  }
}
