package edteam.model;

public abstract class Product implements Cloneable {
  private String name;
  private int amount = 0;
  private double price = 0;

  // Se declara el constructor por defecto para
  // utilizar "super" en las clases heredadas.
  public Product(){}

  public Product(String name) {
    this.name = name;
  }

  // Método para clonar un producto.
  public Product clone() throws CloneNotSupportedException {
    return (Product) super.clone();
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public int getAmount() {
    return amount;
  }

  public void setAmount(int amount) {
    if (amount < 0) {
      System.out.println("[ERROR] No se puede asignar una cantidad negativa sobre el producto.");
      return;
    }

    this.amount = amount;
  }

  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    if (price < 0) {
      System.out.println("[ERROR] No se puede asignar un precio negativa sobre el producto.");
      return;
    }

    this.price = price;
  }

  @Override
  public String toString() {
    return "Nombre: " + name
      + " - Cantidad: " + amount
      + " - Precio: " + price;
  }
}
