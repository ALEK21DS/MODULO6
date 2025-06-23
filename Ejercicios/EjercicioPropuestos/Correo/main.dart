import 'servidor_correo.dart';

void main () {
  final servidor1 = ServidorCorreo();
  servidor1.conectar();
  servidor1.enviarCorreo('Juan', 'Boda');

  final servidor2 = ServidorCorreo();
  servidor2.enviarCorreo('Alex', 'Sueldo');

  print(servidor2 == servidor1);

  print(servidor1.estaConectado);

  servidor2.desconectar();
}