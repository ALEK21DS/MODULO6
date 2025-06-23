import 'producto.dart';
import 'tienda.dart';

void main () {
  Producto producto1 = Producto('12345');
  Producto producto2 = Producto('67890');

  producto1.registrarVenta('Papas Fritas', 2.5, 'Saladas');
  producto2.registrarVenta('Yogurt', 1, 'Frio');

  Tienda.cambiarAnuncio('Descuento los LUNES!!');

  producto1.resumen();
  print('-----------------------------------');
  producto2.resumen();
  print('-----------------------------------');

  print('Total de productos vendidos: ${Tienda.obtenerVentas()}');
}