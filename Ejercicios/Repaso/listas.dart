void main() {
  List<String> ciudades = ['Quito', 'Guayaquil', 'Cuenca', 'Loja', 'Quito'];
  print(ciudades);

  //ciudades.add(10);
  ciudades.add('Esmeraldas');
  print(ciudades);
  print(ciudades[1]);

  ciudades.remove('Esmeraldas');
  print(ciudades);

  List <List<int>> numeros = [
    [1,2,3],
    [4,5,6]
  ];

  print(numeros[0][1]);

  List <Ciudad> ciudadesObj = [
    Ciudad('Quito', 20000),
    Ciudad('Cuenca', 10000),
    Ciudad('Ambato', 85000),
  ];

  print(ciudadesObj[0].nombre);
  print(ciudadesObj[0].poblacion);

  ciudadesObj.add(Ciudad('Guayaquil', 23000));
  
  for(var ciudad in ciudadesObj) {
    print('${ciudad.nombre}, ${ciudad.poblacion}');
  }
}

class Ciudad {
  String? nombre;
  int? poblacion;

  Ciudad(this.nombre, this.poblacion);
}