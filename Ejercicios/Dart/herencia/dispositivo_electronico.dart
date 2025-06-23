abstract class DispositivoElectronico {
  int codigo;
  String marca;
  DispositivoElectronico(this.codigo, this.marca);

  void imprimir(){
    print("Codigo: $codigo \nMarca: $marca");
  }

  void registrarInventario();
}