package edteam.controller;

import edteam.view.View;
import edteam.storage.Database;
import edteam.model.Product;

public class Register {
  private Database database;

  public Register() {
    this.database = new Database();
  }

  // Realiza el proceso de compra de un producto.
  private void buyProduct(Product product) {
    // Ingresa la cantidad del producto.
    View.showGetAmount();
    int amount = View.getAmount();

    // Ingresa el precio del producto.
    View.showGetPrice();
    double price = View.getPrice();

    product.setAmount(amount);
    product.setPrice(price);
    this.database.buy(product);
  }

  // Inicia el proceso de comprar un producto.
  private void buy() {
    do {
      View.clearScreen();
      View.showBuyHeader();
      View.showGetOption();

      int option = View.getOption();

      Product[] products = this.database.getAll();

      // Comprueba la opción ingresada.
      if (option < 0 || option > products.length) {
        View.showInvalidOption();
        View.showAnyKey();
        View.getOption();
        continue;
      }

      // Sale del menú de compra.
      if (option == 0) return;

      // Consulta la información del producto.
      Product product = this.database.getByIndex(option - 1);

      // Procesa la compra del producto.
      this.buyProduct(product);

      View.showAnyKey();
      View.getOption();
    } while (true);
  }

  // Muestra todo el inventario.
  private void showStock() {
    View.clearScreen();
    View.showStockHeader();

    for (Product product : this.database.getAll()) {
      View.showItem(product);
    }

    View.showAnyKey();
    View.getOption();
  }

  // Realiza el proceso de vender un producto.
  private void saleProduct(Product product) {
    // Ingresa la cantidad del producto.
    View.showGetAmount();
    int amount = View.getAmount();

    product.setAmount(amount);
    this.database.sale(product);
  }

  // Inicia el proceso de vender un producto.
  private void sale() {
    do {
      View.clearScreen();
      View.showSaleHeader();
      View.showGetOption();

      int option = View.getOption();

      Product[] products = this.database.getAll();

      // Comprueba la opción ingresada.
      if (option < 0 || option > products.length) {
        View.showInvalidOption();
        View.showAnyKey();
        View.getOption();
        continue;
      }

      // Sale del menú de venta.
      if (option == 0) return;

      // Consulta la información del producto.
      Product product = this.database.getByIndex(option - 1);

      // Procesa la venta del producto.
      this.saleProduct(product);

      View.showAnyKey();
      View.getOption();
    } while (true);
  }

  // Muestra todas las compras.
  private void showPurchases() {
    View.clearScreen();
    View.showBuyListHeader();

    for (Product product : this.database.getPurchases()) {
       View.showItem(product);
    }

    View.showAnyKey();
    View.getOption();
  }

  // Muestra todas las ventas.
  private void showSales() {
    View.clearScreen();
    View.showSaleListHeader();

    for (Product product : this.database.getSales()) {
      View.showItem(product);
    }

    View.showAnyKey();
    View.getOption();
  }

  // Inicia el proceso de la caja registradora.
  public void register() {
    do {
      View.clearScreen();
      View.showMainHeader();
      View.showMainMenu();
      View.showGetOption();

      int option = View.getOption();

      // Comprueba la opción ingresada.
      if (option < 0 || option > 5) {
        View.showInvalidOption();
        View.showAnyKey();
        View.getOption();
        continue;
      }

      switch (option) {
        case 0:
          View.showThanks();
          return;
        case 1:
          this.buy();
          break;
        case 2:
          this.sale();
          break;
        case 3:
          this.showStock();
          break;
        case 4:
          this.showPurchases();
          break;
        case 5:
          this.showSales();
          break;
      }
    } while (true);
  }
}
