class Main {
  public static void main(String[] args) {
    // Conjunto de datos del mismo tipo.
    int arreglo[];

    // Define el tamaño del arreglo.
    int numeros[] = new int[30];

    // Accede a un elemento del arreglo.
    numeros[15] = 100;

    // Itera sobre los elementos del arreglo.
    for (int i = 0; i < numeros.length; i++) {
      System.out.println("Posición [" + i + "]: " + numeros[i]);
    }
  }
}
