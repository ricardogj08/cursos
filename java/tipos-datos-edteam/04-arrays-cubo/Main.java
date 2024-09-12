class Main {
  public static void main(String[] args) {
    int x = 3, y = 3, z = 3;

    // Define el tamaño del cubo. 
    String cubo[][][] = new String[x][y][z];

    // Itera sobre los elementos del cubo.
    for (int i = 0; i < x; i+=1) {
      for (int j = 0; j < y; j+=1) {
        for (int k = 0; k < z; k+=1) {
          cubo[i][j][k] = String.valueOf(i) + " " + String.valueOf(j) + " " + String.valueOf(k);
          System.out.println("Posición [" + i + "][" + j + "][" + k + "]: " + cubo[i][j][k]);
        }
      }
    }
  }  
}
