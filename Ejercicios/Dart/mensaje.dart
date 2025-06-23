class Mensaje {
  void saludar(String nombre, String apellido, String apodo){
    print('Hola $nombre $apellido, alias $apodo');
  }
  void darBienvenida(String nombre, String apellido, String? apodo){
    print('Hola $nombre $apellido, alias $apodo');
  }
  void despedirse({String nombre = "defecto", String apellido = "", String? apodo}){
        print('Hola $nombre $apellido, alias $apodo');
  }
  void animar({required String nombre, required String apellido, String? apodo}){
        print('Hola $nombre $apellido, alias $apodo');
  }
}

void main () {
  final msg = Mensaje();
  msg.saludar("Juan", "Perez", "");
  msg.darBienvenida("Juan", "Ramones", null);
  msg.darBienvenida("Juan", "Ramones", "El flaco");
  msg.despedirse(apodo:"Crack");
  msg.despedirse(nombre: "Juan");
}
