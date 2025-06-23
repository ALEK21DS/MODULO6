void main () {
  print("'Termino mi tarea'");
  enviarTarea();
  print('Jugando videojuegos');

}

Future <String> calificarTarea () {
  return Future.delayed(Duration(seconds: 5), () => 'Tarea Calificada');
}

void enviarTarea () async {
  print('Enviando tarea');
  final mensaje = await calificarTarea();

  print(mensaje);

  print('A revisar mi calificacion!!');
}