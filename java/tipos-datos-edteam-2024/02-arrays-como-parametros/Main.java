class Main {
  // Modifica los elementos del arreglo por referencia.
  public static void utilizarArreglo(int numeros[]) {
    numeros[5] = 1;
  }

  public static void main(String[] args) {
    // Inicializa el arreglo con valores.
    int numeros[] = {1, 2, 3, 4, 5, 6};

    String nombres[] = {"José", "Miguel", "Fernando"};
    String meses[] = {"Enero", "Febrero"};

    utilizarArreglo(numeros);

    System.out.println("Posición [5]: " + numeros[5]);
  }
}
