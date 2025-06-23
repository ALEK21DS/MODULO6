class Producto{
  String codigo = "";
  String nombre = "";
  String? descripcion;
  bool activo = true;
  double precio = 0.0;
  int? stock;
}

void main(){
  Producto p1 = new Producto();
  p1.codigo = "0111";
  p1.nombre = "Monster";
  p1.precio = 2.50;
  p1.stock = 6;

  print("Producto 1: ");
  print("Codigo: ${p1.codigo} \nNombre: ${p1.nombre}\nPrecio: ${p1.precio} \nStock: ${p1.stock}\nActivo: ${p1.activo} \n");

  Producto p2 = Producto();
  p2.codigo = "0222";
  p2.nombre = "Agua Cielo";
  p2.activo = false;
  p2.precio = 0.50;

  print("Producto 2: ");
  print("Codigo: ${p2.codigo} \nNombre: ${p2.nombre}\nPrecio: ${p2.precio} \nActivo: ${p2.activo} \n");

  final p3 = Producto();
  p3.codigo = "0333";
  p3.nombre = "Gatorade";
  p3.precio = 1.50;
  p3.stock = 10;

  print("Producto 3: ");
  print("Codigo: ${p3.codigo} \nNombre: ${p3.nombre}\nPrecio: ${p3.precio} \nStock: ${p3.stock} \nActivo: ${p3.activo} \n");
}