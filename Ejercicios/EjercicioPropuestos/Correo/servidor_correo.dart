class ServidorCorreo {

  static final ServidorCorreo _instancia = ServidorCorreo._interno();
  factory ServidorCorreo() => _instancia;
  ServidorCorreo._interno();
  bool _conectado = false;
  bool get estaConectado => _conectado;

  void conectar () {
    if (!_conectado){
      _conectado = true;
      print('Servidor conectado correctamente');
    } else {
      print('Ya existe una conexion activa');
    }
  }

  void enviarCorreo (String destinatario, String asunto) {
    if(_conectado){
      print('Enviando correo a $destinatario (${asunto})' );
    } else {
      print('Servidor no esta conectado');
    }
  }

  void desconectar () {
    if(_conectado){
      _conectado = false;
      print('Conexion inactiva');
    } else {
      print('No existe un servidor conectado');
    }
  }
}