import java.util.List;

class Main {
  public static void main(String[] args) {
    List<Order> orders = List.of(
      new Order("A123", 150),
      new Order("B456", 200),
      new Order("C789", 100),
      new Order("D012", 250)
    );

    // Método lambda (Práctica anterior).
    orders.forEach(order -> OrderUtils.printOrderInfo(order));

    // Método por referencia (Nueva práctica).
    orders.forEach(OrderUtils::printOrderInfo);
  }
}
