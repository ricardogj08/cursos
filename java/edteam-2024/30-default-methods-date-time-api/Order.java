import java.time.LocalDateTime;

class Order implements OrderProcessor {
  private String id;
  private double total;
  private LocalDateTime orderDateTime;
  private LocalDateTime dispatchDateTime;

  public Order(String id, double total, LocalDateTime orderDateTime) {
    this.id = id;
    this.total = total;
    this.orderDateTime = orderDateTime;
    // Agrega 2 días a la fecha establecida.
    this.dispatchDateTime = orderDateTime.plusDays(2);
  }

  public void processOrder(Order order) {
    System.out.println("* Procesando la orden " + order.getId() + " ........");
  }

  public String getId() {
    return id;
  }

  public double getTotal() {
    return total;
  }

  public LocalDateTime getOrderDateTime() {
    return orderDateTime;
  }

  public LocalDateTime getDispatchDateTime() {
    return dispatchDateTime;
  }

  public String toString() {
    return "Order{" +
      "id='" + id + '\'' +
      ", total=" + total + '\'' +
      ", orderDateTime='" + orderDateTime + '\'' +
      ", dispatchDateTime='" + dispatchDateTime + "'}";
  }
}
