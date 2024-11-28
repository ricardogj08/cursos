class Main {
  public static void main(String[] args) {
    System.out.println("=> Uso de break");

    for (int i = 0; i < 10; i++) {
      if (i == 5) {
        break;
      }

      System.out.println(i);
    }

    System.out.println("=> Uso de continue");

    for (int i = 0; i < 10; i++) {
      if (i == 5) {
        continue;
      }

      System.out.println(i);
    }

    System.out.println("=> Uso de exit");

    for (int i = 0; i < 10; i++) {
      if (i == 5) {
        System.exit(0);
      }

      System.out.println(i);
    }

    System.out.println("=> Fin del programa");
  }
}
