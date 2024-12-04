package edteam;

import edteam.controller.Register;

public class Main {
  public static void main(String[] args) {
    Register register = new Register();

    register.register();

    // Obtiene un producto en específico.
    //Product product = database.getByIndex(0);
    //System.out.println(product);

    // Se evita modificar la información original directamente.
    //product.setName("Pastusa");
    //product.setAmount(10);
    //product.setPrice(1000);

    // Obtiene todos los productos.
    //Product[] products = database.getAll();

    //for (Product p : products) {
      //System.out.println(p);
    //}
  }
}
