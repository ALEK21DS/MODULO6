import 'tienda.dart';

class Producto {
  final String codigo;
  late String descripcion;
  double precio = 0;
  dynamic observacion;

  Producto(this.codigo);

  void registrarVenta(String des, double pre, String obs) {
    descripcion = des;
    precio = pre;
    observacion = obs;
    Tienda.aumentarVentas();
  }

  void resumen() {
    print('          ${Tienda.nombre} \n       ${Tienda.anuncio} ');
    print('-----------------------------------');
  print('Producto: $codigo');
  print('Descripcion: $descripcion');
  print('Precio: $precio');
  print('Observacion: $observacion');
  }
}