import 'dispositivo_electronico.dart';

class Computador extends DispositivoElectronico {
  int capacidadDisco;

  Computador(this.capacidadDisco, super.codigo, super.marca);

  @override
  void imprimir(){
    print("Codigo: $codigo \nMarca: $marca \nCapacidad de disco: $capacidadDisco");
  }

  @override
  void registrarInventario(){
    print("Registrando inventario \n");
    imprimir();
  }
}

void main () {
  final cpu = Computador(500, 0001, 'Lenovo');
  cpu.registrarInventario();
}