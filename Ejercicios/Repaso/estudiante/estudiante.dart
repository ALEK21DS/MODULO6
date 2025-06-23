class Estudiante {
  final String nombre;
  late String cuaderno;
  static String pizarra = 'Limpia';
  static const escuela = '14 de Julio';
  static int _contadorEstudiantes = 0;

  void escribirEnPizarra(String mensaje) {
    pizarra = mensaje;
  }

  static obtenerContador(){
    return _contadorEstudiantes;
  }

  Estudiante(this.nombre){
    _contadorEstudiantes++;
  }
}

void main() {
  print(Estudiante._contadorEstudiantes);
}