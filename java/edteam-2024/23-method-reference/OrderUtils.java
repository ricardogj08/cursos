class OrderUtils {
   public static void printOrderInfo(Order order) {
    System.out.println("=> Detalle de la orden");
    System.out.println("ID: " + order.getId());
    System.out.println("Total = " + order.getTotal());
   }
}
