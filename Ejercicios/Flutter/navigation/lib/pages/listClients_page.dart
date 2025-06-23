import 'package:flutter/material.dart';
import 'package:navigation/pages/client_page.dart';

class ListClientsPage extends StatelessWidget {
  ListClientsPage({super.key});

  final List<Client> clients = [
    Client(nombre: 'Brandon', apellido: 'Pesantez', id: '1754708749'),
    Client(nombre: 'Alexander', apellido: 'Matta', id: '1724356809'),
    Client(nombre: 'Maria', apellido: 'Caceres', id: '0986753421'),
    Client(nombre: 'Betty', apellido: 'Camacho', id: '0918029869'),
    Client(nombre: 'Fredi', apellido: 'Calero', id: '1713295853'),
    Client(nombre: 'Leonardo', apellido: 'Maldonado', id: '0293812323'),
    Client(nombre: 'Erick', apellido: 'Toapanta', id: '1798056432'),
    Client(nombre: 'Viviana', apellido: 'Armijos', id: '0948571623'),
    Client(nombre: 'Jorge', apellido: 'Larco', id: '1796582347'),
    Client(nombre: 'Melany', apellido: 'Pinos', id: '1234567890'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CLIENTES'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${clients[index].nombre} ${clients[index].apellido}'),
            subtitle: Text(clients[index].id),
          );
        },
      ),
    );
  }
}
