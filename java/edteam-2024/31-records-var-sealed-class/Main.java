class Main {
  public static void main(String[] args) {
    var circle = new Circle(5);
    var rectangule = new Rectangule(4, 3);

    // Clase no permitida.
    //var otherClass = new OtherClass();

    circle.draw();
    rectangule.draw();

    var point = new Point(2, 3);
    System.out.println("=> Point\n" + point);
  }
}
