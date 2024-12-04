package edteam.view;

import java.util.Scanner;
import edteam.storage.Database;
import edteam.model.Product;

public class View {
  // Muestra la bienvenida a la aplicación.
  public static void showMainHeader() {
    System.out.println("*************************************");
    System.out.println("* BIENVENIDO A LA CAJA REGISTRADORA *");
    System.out.println("*************************************");
  }

  // Muestra el menú de opciones.
  public static void showMainMenu() {
    System.out.println("1. Comprar");
    System.out.println("2. Vender");
    System.out.println("3. Inventario");
    System.out.println("4. Compras");
    System.out.println("5. Ventas");
    System.out.println("0. Salir");
  }

  // Muestra el prompt para ingresar una opción.
  public static void showGetOption() {
    System.out.print("=> Ingresa la opción: ");
  }

  // Lee una opción desde el teclado.
  public static int getOption() {
    Scanner option = new Scanner(System.in);
    return option.nextInt();
  }

  // Muestra la bienvenida al menú de opciones de compra.
  public static void showBuyHeader() {
    System.out.println("*******************");
    System.out.println("* MENÚ DE COMPRAS *");
    System.out.println("*******************");
    showItemsMenu();
  }

  // Muestra la bienvenida al menú de opciones de venta.
  public static void showSaleHeader() {
    System.out.println("******************");
    System.out.println("* MENÚ DE VENTAS *");
    System.out.println("******************");
    showItemsMenu();
  }

  public static void showItemsHeader() {
    System.out.println("| Producto | Cantidad | Precio | Precio total |");
  }

  // Muestra el encabezado para listar el inventario.
  public static void showStockHeader() {
    System.out.println("**************");
    System.out.println("* INVENTARIO *");
    System.out.println("**************");
    showItemsHeader();
  }

  // Muestra el encabezado para listar las compras.
  public static void showBuyListHeader() {
    System.out.println("***********");
    System.out.println("* COMPRAS *");
    System.out.println("***********");
    showItemsHeader();
  }

  // Muestra el encabezado para listar las ventas.
  public static void showSaleListHeader() {
    System.out.println("**********");
    System.out.println("* VENTAS *");
    System.out.println("**********");
    showItemsHeader();
  }

  // Muestra los productos disponibles.
  public static void showItemsMenu() {
    Database database = new Database();

    for (int i = 0; i < database.getAll().length; i++) {
      System.out.println((i + 1) + ". " + database.getByIndex(i).getClass().getSimpleName());
    }

    System.out.println("0. Volver");
  }

  // Muestra el prompt para ingresar la cantidad de un producto.
  public static void showGetAmount() {
    System.out.print("=> Ingresa la cantidad del producto: ");
  }

  // Lee la cantidad de un producto desde el teclado.
  public static int getAmount() {
    Scanner amount = new Scanner(System.in);
    return amount.nextInt();
  }

  // Muestra el prompt para ingresar el precio de un producto.
  public static void showGetPrice() {
    System.out.print("=> Ingresa el precio del producto: ");
  }

  // Lee el precio de un producto desde el teclado.
  public static double getPrice() {
    Scanner price = new Scanner(System.in);
    return price.nextDouble();
  }

  // Muestra el mensaje de opción inválida.
  public static void showInvalidOption() {
    System.out.println("[ERROR] Ingresa un opción válida!!!");
  }

  // Muestra el mensaje de agradecimiento.
  public static void showThanks() {
    System.out.println("GRACIAS POR UTILIZAR LA APLICACIÓN :)");
  }

  // Limpia la pantalla.
  public static void clearScreen() {
    System.out.print("\033[H\033[2J");
  }

  // Muestra el detalle de un producto.
  public static void showItem(Product product) {
    System.out.println("| " + product.getName() + " | " + product.getAmount() + " | $" + product.getPrice() + " | $" + product.getAmount() * product.getPrice() + " |");
  }

  // Muestra el prompt para ingresar cualquier número desde el teclado.
  public static void showAnyKey() {
    System.out.print("=> Ingresa cualquier número para continuar: ");
  }
}
