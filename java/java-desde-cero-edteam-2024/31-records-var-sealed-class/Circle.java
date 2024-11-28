final class Circle extends Shape {
  private int radius;

  public Circle(int radius) {
    this.radius = radius;
  }
  
  @Override
  void draw() {
    System.out.println("=> Dibujando circulo con radio: " + radius);
  }
}
