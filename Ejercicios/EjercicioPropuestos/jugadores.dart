void main () {
  Map <String, int> puntajes = {
    'ALEK': 80,
    'NOVA': 60,
    'ERICKS': 40,
    'ARTEMIS': 20,
  };
  print('2. ${puntajes}');

  print('3. ${puntajes.keys}');

  print('4. El puntaje de ALEK es: ${puntajes['ALEK']}');

  puntajes['NOVA'] = 75;
  print('5. Ahora el puntaje de NOVA es: ${puntajes['NOVA']}');

  puntajes['CARL'] = 15;
  print('6. ${puntajes}');

  puntajes.remove('CARL');
  print('7. ${puntajes}');

  print('8. JUGADORES Y PUNTAJES: \n ${puntajes}');

}