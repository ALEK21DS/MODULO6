import 'taller.dart';

class Vehiculo {
  final String placa;
  late String diagnostico;
  String estado = 'Pendiente';
  dynamic extraInfo;

  Vehiculo(this.placa);

  void registrarDiagnostico (String texto) {
    diagnostico = texto;
    estado = 'Reparado';
    Taller.incrementarContador();
  }

  void resumen () {
    print('    ${Taller.mensajeGeneral} \n       ${Taller.nombre} ');
    print('-----------------------------------');
    print('Placa: $placa');
    print('Diagnostico: $diagnostico');
    print('Estaod: $estado');
    print('Info extra: $extraInfo');
    
  }
}