class Developer extends Employee {
  private int hoursWorked;
  private double hourlyRate;

  public Developer(String name, int id, int hoursWorked, double hourlyRate) {
    // Invoca el constructor de la clase padre.
    super(name, id);

    this.hoursWorked = hoursWorked;
    this.hourlyRate = hourlyRate;
  }

  public int getHoursWorked() {
    return hoursWorked;
  }

  public double getHourlyRate() {
    return hourlyRate;
  }

  // Implementación del método abstracto.
  @Override
  public double calculateSalary() {
    return hoursWorked * hourlyRate;
  }

  // Reescribe la función toString() de la clase padre.
  @Override
  public String toString() {
    return super.toString() +
      "\nHours Worked: " + hoursWorked +
      "\nHourly Rate: $" + hourlyRate;
  }
}
