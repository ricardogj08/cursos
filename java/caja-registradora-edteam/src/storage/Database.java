package edteam.storage;

import edteam.model.Product;
import edteam.model.Potato;
import edteam.model.Rice;
import edteam.model.Meat;
import java.util.List;
import java.util.ArrayList;

// Administra toda la información de los productos.
public class Database {
  private Product[] products;
  private List<Product> purchases = new ArrayList<>(); // Compras.
  private List<Product> sales = new ArrayList<>(); // Ventas.
  private double iva = 1.25;

  // Inicializa la base de datos de productos.
  public Database() {
    products = new Product[] {
      new Potato("Sabanera"),
      new Rice("Una marca"),
      new Meat("Lomo fino")
    };
  }

  // Obtiene la información de un producto.
  public Product getByIndex(int index) {
    if (index < 0 || index >= this.products.length) {
      System.out.println("[ERROR] Índice no válido para buscar un producto.");
      return null;
    }

    try {
      // Evita modificar los productos originales por referencia.
      return products[index].clone();
    } catch (CloneNotSupportedException e) {
      System.out.println(e.getMessage());
    }

    return null;
  }

  // Obtiene todos los productos almacenados.
  public Product[] getAll() {
    Product[] result = new Product[products.length];

    try {
      for (int i = 0; i < products.length; i++) {
        result[i] = products[i].clone();
      }
    } catch (CloneNotSupportedException e) {
      System.out.println(e.getMessage());
    }

    return result;
  }

  // Compra un producto para el inventario.
  public void buy(Product product) {
    Product purchasedProduct = null;

    // Comprueba si el producto existe.
    for (Product foundProduct : this.products) {
      if (foundProduct.getClass().getSimpleName() == product.getClass().getSimpleName()) {
        purchasedProduct = foundProduct;
        break;
      }
    }

    if (purchasedProduct == null) {
      System.out.println("[ERROR] Producto no válido para comprar.");
      return;
    }

    // Aumenta el inventario del producto al precio establecido por referencia.
    purchasedProduct.setAmount(purchasedProduct.getAmount() + product.getAmount());
    purchasedProduct.setPrice(product.getPrice());

    // Registra la nueva compra del inventario.
    purchases.add(product);
  }

  // Vender un producto del inventario.
  public void sale(Product product) {
    Product soldProduct = null;

    // Comprueba si el producto existe.
    for (Product foundProduct : this.products) {
      if (foundProduct.getClass().getSimpleName() == product.getClass().getSimpleName()) {
        soldProduct = foundProduct;
        break;
      }
    }

    if (soldProduct == null) {
      System.out.println("[ERROR] Producto no válido para vender.");
      return;
    }

    if (product.getAmount() > soldProduct.getAmount() || product.getAmount() < 0) {
      System.out.println("[ERROR] La cantidad del producto no es válida.");
      return;
    }

    // Disminuye el inventario del producto por referencia.
    soldProduct.setAmount(soldProduct.getAmount() - product.getAmount());
    product.setPrice(soldProduct.getPrice() * this.iva);

    // Registra la venta del inventario.
    sales.add(product);
  }

  // Obtiene todas las compras.
  public List<Product> getPurchases() {
    return purchases;
  }

  // Obtiene todas las ventas.
  public List<Product> getSales() {
    return sales;
  }
}
