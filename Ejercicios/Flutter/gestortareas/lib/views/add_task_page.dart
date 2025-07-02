import 'package:flutter/material.dart';
import 'package:gestortareas/models/task.dart';
import 'package:gestortareas/services/database_helper.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});
  @override
  State<StatefulWidget> createState() => _AddTaskPageState();
}
class _AddTaskPageState extends State<AddTaskPage> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  DateTime? dueDate;
  String status = 'Pendiente';

  void _showMessage(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: DateTime(now.year + 5),
    );

    if (picked != null) {
      setState(() {
        dueDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agregar Tarea')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'TITULO'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'DESCRIPCION'),
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Text(
                    dueDate == null
                        ? 'Seleciones una fecha de vencimiento'
                        : 'Vence: ${dueDate!.toLocal().toString().split(' ')[0]}',
                  ),
                ),
                ElevatedButton(
                  onPressed: _pickDate,
                  child: Text('Seleccionar Fecha'),
                ),
              ],
            ),
            DropdownButton<String>(
              value: status,
              items: [
                'Pendiente',
                'Completado',
              ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
              onChanged: (val) => setState(() => status = val!),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                String title = titleController.text.trim();
                if (title.isEmpty) {
                  _showMessage('El titulo es obligatorio');
                  return;
                }
                if (dueDate == null) {
                  _showMessage('Seleccione una fecha de vencimiento');
                  return;
                }
                final newTask = Task(
                  id: DateTime.now().microsecondsSinceEpoch,
                  title: title,
                  description: descriptionController.text.trim(),
                  dueDate: dueDate!.toIso8601String().substring(0, 10),
                  status: status,
                );
                await DatabaseHelper().insertTask(newTask);
                Navigator.pop(context, true);
              },
              child: const Text('GUARDAR'),
            ),
          ],
        ),
      ),
    );
  }
}
