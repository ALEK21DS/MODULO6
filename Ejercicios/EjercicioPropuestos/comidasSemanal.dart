void main() {
  List<String> comidasFavoritas = [
    'Pizza',
    'Hamburgesa',
    'Encebollado',
    'Papas con Cuero',
    'Ceviche'
  ];
  print('1.Comidas Favoritas: \n ${comidasFavoritas}');

  comidasFavoritas.add('Bolon');
  print('2.Agregar: \n ${comidasFavoritas}');

  comidasFavoritas.remove('Ceviche');
  print('3.Eliminar: \n ${comidasFavoritas}');

  print('4.Comida Especial: \n ${comidasFavoritas[2]}');

  List <List<String>> menuSemanal = [
    ['Tostadas', 'Arroz con Pollo', 'Cafe con pan'],
    ['Batido', 'Carne frita', 'Empanadas'],
    ['Empanadas', 'Pasta', 'Te'],
    ['Ensalada de Frutas', 'Sopa', 'Jamon con tostadas'],
    ['Sandwich', 'Estofado', 'Cafe con pan'],
    ['Huevos duros', 'Encebollado', 'Empanadas'],
    ['HUevos revueltos', 'Hamburguesa', 'Te']
  ];
  print('5. Menu semanal');
  for (var menu in menuSemanal) {
    print(menu);
  }

  print('6.Almuerzo de Martes: \n ${menuSemanal[1][1]}');

  menuSemanal[4][2] = 'Chocolatada';
  print('7.Cena del viernes cambiada a ${menuSemanal[4][2]}');

  print('8. Menu semanal');
  var index = 0;
  for (var dia in menuSemanal) {
    index++;
    print('$index. $dia');
  }

}