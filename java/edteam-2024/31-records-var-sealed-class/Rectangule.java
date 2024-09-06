final class Rectangule extends Shape {
  private int length;
  private int width;

  public Rectangule(int length, int width) {
    this.length = length;
    this.width = width;
  }
  
  @Override
  void draw() {
    System.out.println("=> Dibujando rectángulo");
    System.out.println("* Largo: " + length);
    System.out.println("* Ancho: " + width);
  }
}
