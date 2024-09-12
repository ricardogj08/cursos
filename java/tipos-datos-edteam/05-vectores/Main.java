import java.util.Vector;

class Main {
  public static void main(String[] args) {
    // Implementa una matriz cultivable de objetos.
    // Puede incrementar o decrecer su tamaño.
    // La capacidad inicial por defecto es "10"
    // y el incremento inicial es 100%.
    Vector vector = new Vector();

    // Define la capacidad inicial del vector.
    Vector vectorInicial = new Vector(30);

    // Agrega un nuevo elemento al vector.
    vectorInicial.add("José");
    vectorInicial.add("Diego");
    vectorInicial.add("Pedro");

    // Agrega un nuevo elemento al vector dada una posición.
    vectorInicial.insertElementAt("Hola Mundo!!", 0);

    // Elimina un elemento del vector dada una posición.
    vectorInicial.removeElementAt(2);

    // Define el incremento del tamaño del vector
    // si excede la capacidad inicial.
    Vector vectorIncremento = new Vector(30, 8);
  

    // El incremento inicial de ArrayList es 50%.
  }
}
