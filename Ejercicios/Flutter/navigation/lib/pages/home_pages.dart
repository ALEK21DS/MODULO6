import 'package:flutter/material.dart';
import 'package:navigation/pages/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              //final route = MaterialPageRoute(
                //builder: (ctx){
                  //return const ProductsPage();
                //}
              //);
              //Navigator.push(context, route);
              Navigator.pushNamed(context, Routes.products);
            },
            child: const Text('IR A PRODUCTOS'),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: (){
              //final route = MaterialPageRoute(
                //builder: (ctx){
                  //return const CustomersPage();
                //}
              //);
              //Navigator.push(context, route);
              Navigator.pushNamed(context, Routes.customers);
            },
            child: Text('IR A CLIENTES'),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.pushNamed(context, Routes.listview);
            },
            child: Text('IR A LIST BASICA'),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.pushNamed(context, Routes.productsList);
            },
            child: Text('IR A LISTA DE PRODUCTOS'),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.pushNamed(context, Routes.listClients);
            },
            child: Text('LISTAR CLIENTES'),
          )
        ],
      ),
    );
  }
}
