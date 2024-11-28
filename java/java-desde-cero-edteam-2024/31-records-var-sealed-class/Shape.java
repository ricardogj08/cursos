// Clase sellada.
abstract sealed class Shape permits Circle, Rectangule {
 abstract void draw(); 
}
