import java.util.List;

class Main {
  public static void main(String[] args) {
    List<Order> orders = List.of(
      new Order("A123", 150),
      new Order("B456", 200),
      new Order("C789", 100),
      new Order("D012", 250)
    );

    // Filtra las ordenes con un total mayor a 100.
    List<Order> filteredOrders = orders.stream()
      .filter(order -> order.getTotal() > 100)
      .toList();

    System.out.println("=> Ordenes mayores a 100");
    System.out.println(filteredOrders);

    // Iterar sobre una lista con map.
    List<String> orderIds = orders.stream()
      .map(Order::getId)
      .toList();

    System.out.println("=> IDs");
    System.out.println(orderIds);
  }
}
