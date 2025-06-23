import 'empleado.dart';
import 'taller.dart';
import 'vehiculo.dart';

void main () {
  Empleado empleado = Empleado('Carlos');
  empleado.actualizarMensaje('Bienvenido al taller ${empleado.nombre}');

  Vehiculo vehiculo1 = Vehiculo('ASS-098');
  Vehiculo vehiculo2 = Vehiculo('PFD-789');

  vehiculo1.registrarDiagnostico('Frenos desgastados');
  vehiculo2.registrarDiagnostico('Cambio de aceite');

  vehiculo1.extraInfo = 'Cliente con plata';
  vehiculo2.extraInfo = 12.5;

  vehiculo1.resumen();
  print('-----------------------------------');
  vehiculo2.resumen();
  print('-----------------------------------');
  print('Vehiculos reparados: ${Taller.obtenerReparaciones()}');
}