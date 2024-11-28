import java.util.List;
import java.time.LocalDateTime;
import java.util.Optional;

class Main {
  public static void main(String[] args) {
    // Crea una lista inmutable de ordenes.
    List<Order> orders = List.of(
      new Order("A123", 150, LocalDateTime.now()),
      new Order("B456", 80, LocalDateTime.now()),
      new Order("C789", 200, LocalDateTime.now()),
      new Order("DD12", 120, LocalDateTime.now()),
      new Order("C345", 150, LocalDateTime.now())
    );

    String orderId = "B456";
    Optional<Order> foundOrder = findOrderById(orders, orderId);

    // Si se encuentra la orden ejecuta las acciones.
    foundOrder.ifPresentOrElse(
      order -> {
        order.processOrder(order);
        order.showOrderDetails(order);
      },
      () -> System.out.println("No se encontró la orden con el ID: " + orderId)
    );
  }

  // Filtra una orden desde su ID.
  private static Optional<Order> findOrderById(List<Order> orders, String orderId) {
    return orders.stream()
      .filter(order -> order.getId().equals(orderId))
      .findFirst();
  }
}
