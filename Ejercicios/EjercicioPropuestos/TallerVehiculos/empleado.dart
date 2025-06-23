import 'taller.dart';

class Empleado {
  final String nombre;

  Empleado(this.nombre);

  void actualizarMensaje (String texto) {
    Taller.cambiarMensaje(texto);
  }
}