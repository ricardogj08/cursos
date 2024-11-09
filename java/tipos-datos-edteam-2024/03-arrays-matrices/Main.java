class Main {
  public static void main(String[] args) {
    // Es un arreglo de 2 dimensiones.
    int matriz[][];

    // Define el tamaño de la matriz.
    int numeros[][] = new int[4][4];

    // Inicializa la matriz con valores.
    int datos[][] = {
      {1, 2, 3, 4},
      {5, 6, 7, 8},
      {9, 10, 11, 12},
      {13, 14, 15, 16}
    };

    // Itera sobre los elementos de la matriz.
    for (int x = 0; x < datos.length; x+=1) {
      for (int y = 0; y < datos[x].length; y+=1) {
        System.out.println("Posición [" + x + "][" + y + "]: " + datos[x][y]);
      }
    }
  }
}
