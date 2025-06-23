import 'package:flutter/material.dart';
import 'package:lista_clientes/databaseHelper.dart';
import 'package:lista_clientes/product_form.dart';
import 'package:lista_clientes/products_list.dart';

void main() {
  var dbHelper1 = DatabaseHelper();
  var dbHelper2 = DatabaseHelper();

  if (dbHelper1 == dbHelper2) {
    print('DatabaseHelper es un Singleton');
  } else {
    print('DatabaseHelper no es un Singleton');
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProductsList(),
      routes: {
        '/add': (context) => const ProductForm(),
      },  
      
    );
  }
}
