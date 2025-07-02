import 'package:flutter/material.dart';
import 'package:gestortareas/views/add_task_page.dart';
import 'package:gestortareas/views/homa_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestor de Tareas',
      home: const HomaPage(),
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        '/add': (context) => const AddTaskPage(),
      },
    );
  }
}
