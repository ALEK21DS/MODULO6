import 'package:flutter_test/flutter_test.dart';
import 'package:lista_clientes/databaseHelper.dart';
import 'package:lista_clientes/product.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  // Inicializa FFI
  sqfliteFfiInit();

  // Cambia la fábrica de la base de datos por la de FFI
  databaseFactory = databaseFactoryFfi;

  late DatabaseHelper databaseHelper;

  setUp(() async {
    databaseHelper = DatabaseHelper();
  });

  test('Insert product', () async {
    var product = Product(
      id: 1,
      name: 'Test Product',
      price: 9.99,
      description: 'Test description',
      correo: 'Test correo'
    );
    await databaseHelper.insertProduct(product);

    var products = await databaseHelper.getProducts();
    // Recorrer la lista de productos e imprimir en consola
    for (var product in products) {
      print(
        'ID: ${product.id}, NAME: ${product.name}, PRICE: ${product.price}, DESCRIPTION: ${product.description}, CORREO ${product.correo}',
      );
    }
  });

  test('Update product', () async {
    var product = Product(
      id: 1,
      name: 'Test Product',
      price: 9.99,
      description: 'Test description',
      correo: 'Test correo'
    );
    await databaseHelper.insertProduct(product);

    var updatedProduct = Product(
      id: 1,
      name: 'Updated Product',
      price: 200.99,
      description: 'Update Description',
      correo: 'Correo'
    );
    await databaseHelper.updateProduct(updatedProduct);

    var products = await databaseHelper.getProducts();
    // Recorrer la lista de productos e imprimir en consola
    for (var product in products) {
      print(
        'ID: ${product.id}, NAME: ${product.name}, PRICE: ${product.price}, DESCRIPTION: ${product.description}, CORREO ${product.correo}',
      );
    }
  });

  test('Delete product', () async {
    var product = Product(
      id: 1,
      name: 'Test Product',
      price: 9.99,
      description: 'Test description',
      correo: 'Test correo'
    );
    await databaseHelper.insertProduct(product);
    await databaseHelper.deleteProduct(1);

    var products = await databaseHelper.getProducts();
    // Recorrer la lista de productos e imprimir en consola
    for (var product in products) {
      print(
        'ID: ${product.id}, NAME: ${product.name}, PRICE: ${product.price}, DESCRIPTION: ${product.description}, CORREO ${product.correo}',
      );
    }
  });
}
