class Persona{
  String? nombre;
  int edad = 0;
  double? estatura;

  Persona(this.nombre, this.edad, this.estatura);
}

void main(){
  final p = Persona("Juanito", 40, 1.78);

  print("Nombre: ${p.nombre}");
  print("Apellido: ${p.edad}");
  print("Estatura: ${p.estatura}");
}