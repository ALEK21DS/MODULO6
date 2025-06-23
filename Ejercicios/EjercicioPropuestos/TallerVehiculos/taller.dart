class Taller {
  static const String nombre = "ALEK'S MECHANIC";
  static String mensajeGeneral = 'Bienvenido';
  static int _totalReparaciones = 0;

  static void cambiarMensaje(String mensaje) {
    mensajeGeneral = mensaje;
  }
  static incrementarContador () {
    _totalReparaciones++;
  }
  static obtenerReparaciones () {
    return _totalReparaciones;
  }

}