class Main {
  public static void main(String[] args) {
    int a = 5;
    int b = 10;
    int c = 15;

    // Operadores relacionales.
    boolean esMayor = (b > c);
    System.out.println("b > c = " + esMayor);

    boolean esDiferente = (b != c);
    System.out.println("b != c = " + esDiferente);

    // Operadores lógicos.
    boolean isAnd = (a < b) && (b < c);
    System.out.println("isAnd = " + isAnd);

    boolean isOr = (a == b) || (b == c);
    System.out.println("isOr = " + isOr);

    System.out.println("isOr negado = " + ! isOr);
  }
}
