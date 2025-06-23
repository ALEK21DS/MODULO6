void main () {

  print('Sazonando el pollo');
  colocarPollo();
  print('Preparando ensalada');

}

Future <String> esperarHorno () {
  return Future.delayed(Duration(seconds: 5), () => 'Timbre del Horno, Pollo listo!!');
}

void colocarPollo () async {
  print('Colocando pollo en el horno');
  final mensaje = await esperarHorno();

  print(mensaje);

  print('A preparar la mesa');
}