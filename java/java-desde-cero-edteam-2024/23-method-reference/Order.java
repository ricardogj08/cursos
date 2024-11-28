class Order {
  private String id;
  private double total;

  public Order(String id, double total) {
    this.id = id;
    this.total = total;
  }

  public String getId() {
    return id;
  }

  public double getTotal() {
    return total;
  }

  public String toString() {
    return "Order{" +
      "id='" + id + '\'' +
      ", total=" + total + '}';
  }
}
