import 'animal.dart';

class Gato extends Animal {

  @override
  void dormir(){
    print("Gato durmiendo");
  }
}

void main(){
  final gato = Gato();
  gato.dormir();
}