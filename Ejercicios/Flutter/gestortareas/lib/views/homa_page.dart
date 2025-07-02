import 'package:flutter/material.dart';
import 'package:gestortareas/models/task.dart';
import 'package:gestortareas/services/database_helper.dart';
import 'package:gestortareas/views/edit_task_page.dart';
import 'package:gestortareas/widgets/task_title.dart';

class HomaPage extends StatefulWidget {
  const HomaPage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomaPage> {
  late Future<List<Task>> _taskList;

  @override
  void initState() {
    super.initState();
    _refreshList();
  }

  void _refreshList() {
    setState(() {
      _taskList = DatabaseHelper().getTasks();
    });
  }

  void _deleteTask(int id) async {
    await DatabaseHelper().deleteTask(id);
    _refreshList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi Archivador de Tareas')),
      body: FutureBuilder<List<Task>>(
        future: _taskList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No hay libros registrado'));
          } else {
            return ListView(
              children: snapshot.data!
                  .map(
                    (task) => TaskTitle(
                      task: task,
                      onDelete: () {
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text('Eliminar Tarea'),
                            content: Text(
                              'Seguro que quieres eliminar la tarea "${task.title}"?',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('Cancelar'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  _deleteTask(task.id);
                                  Navigator.pop(context);
                                },
                                child: Text('ELIMINAR'),
                              ),
                            ],
                          ),
                        );
                      },
                      onEdit: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => EditTaskPage(task: task),
                          ),
                        );
                        if (result == true) _refreshList();
                      },
                    ),
                  )
                  .toList(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.pushNamed(context, '/add');
          if (result == true) _refreshList();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
