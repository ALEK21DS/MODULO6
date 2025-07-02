import 'package:flutter/material.dart';
import 'package:gestortareas/models/task.dart';
import 'package:gestortareas/services/database_helper.dart';

class EditTaskPage extends StatefulWidget {
  final Task task;
  const EditTaskPage({super.key, required this.task});

  @override
  State<StatefulWidget> createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  late DateTime dueDate;
  late String status;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.task.title);
    descriptionController = TextEditingController(
      text: widget.task.description,
    );
    dueDate = DateTime.parse(widget.task.dueDate);
    status = widget.task.status;
  }

  void _showMessage(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: dueDate,
      firstDate: DateTime(now.year - 5),
      lastDate: DateTime(now.year + 5),
    );

    if (picked != null) {
      setState(() {
        dueDate = picked;
      });
    }
  }

  String get _formattedDueDate {
    return dueDate.toIso8601String().substring(0, 10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Editar Tarea')),
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
                Expanded(child: Text('Fecha: $_formattedDueDate')),
                ElevatedButton(
                  onPressed: _pickDate,
                  child: Text('Cambiar Fecha'),
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

                String formattedDate = dueDate.toIso8601String().substring(0, 10);

                final updateTask = Task(
                  id: widget.task.id,
                  title: title,
                  description: descriptionController.text.trim(),
                  dueDate: formattedDate,
                  status: status,
                );
                await DatabaseHelper().updateTask(updateTask);
                Navigator.pop(context, true);
              },
              child: const Text('ACTUALIZAR'),
            ),
          ],
        ),
      ),
    );
  }
}
