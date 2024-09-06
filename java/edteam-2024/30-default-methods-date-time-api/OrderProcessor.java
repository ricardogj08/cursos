interface OrderProcessor {
  // Método abstracto.
  void processOrder(Order order);

  // Método con implementación (Default method).
  default void showOrderDetails(Order order) {
    System.out.println("=> Orden: " + order.getId());
    System.out.println("=> Total: " + order.getTotal());
    System.out.println("=> Fecha registro: " + order.getOrderDateTime());
    System.out.println("=> Fecha entrega: " + order.getDispatchDateTime());
  }
}
