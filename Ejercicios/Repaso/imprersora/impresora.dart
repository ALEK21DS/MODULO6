class ImpresoraCentral {

  static final ImpresoraCentral _instancia = ImpresoraCentral._interno();
  factory ImpresoraCentral() => _instancia;
  ImpresoraCentral._interno();
  bool _conectado = false;
  bool get estaConectada => _conectado;

  void conectar () {
    if (!_conectado){
      _conectado = true;
      print('Impresora conectada correctamente');
    } else {
      print('Ya existe una conexion activa');
    }
  }

  void imprimir (String archivo) {
    if(_conectado) {
      print('IMPRIMIENDO ARCHIVO ${archivo}');
    } else {
      print('La impresora no esta conectada');
    }
  }

}