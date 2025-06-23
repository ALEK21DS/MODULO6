import 'dispositivo_electronico.dart';

class Celular extends DispositivoElectronico{
  
  Celular(super.codigo, super.marca);

  @override
  void imprimir(){
    print("Codigo: $codigo \nMarca: $marca");
  }

  @override
  void registrarInventario(){
    print("Registrando inventario \n");
    imprimir();
  }
}

void main(){
  final cell = Celular(0021, "Apple");
  cell.registrarInventario();
}