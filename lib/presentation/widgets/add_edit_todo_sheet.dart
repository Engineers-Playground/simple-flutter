import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/todo.dart';
import '../bloc/todos_cubit.dart';

class AddEditTodoSheet extends StatefulWidget {
  const AddEditTodoSheet({super.key, this.todo});
  final Todo? todo;

  @override
  State<AddEditTodoSheet> createState() => _AddEditTodoSheetState();
}

class _AddEditTodoSheetState extends State<AddEditTodoSheet> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  DateTime? _dueAt;

  @override
  void initState() {
    super.initState();
    final t = widget.todo;
    if (t != null) {
      _titleController.text = t.title;
      _descController.text = t.description ?? '';
      _dueAt = t.dueAt;
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Padding(
      padding: EdgeInsets.only(bottom: bottom),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(widget.todo == null ? 'Add Todo' : 'Edit Todo',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 12),
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _descController,
              decoration: const InputDecoration(labelText: 'Description'),
              maxLines: 3,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.event),
                    label: Text(_dueAt == null
                        ? 'Pick due date'
                        : 'Due: ${_dueAt!.toLocal().toString().split(' ').first}'),
                    onPressed: () async {
                      final now = DateTime.now();
                      final picked = await showDatePicker(
                        context: context,
                        initialDate: _dueAt ?? now,
                        firstDate: DateTime(now.year - 1),
                        lastDate: DateTime(now.year + 5),
                      );
                      if (picked != null) setState(() => _dueAt = picked);
                    },
                  ),
                ),
                if (_dueAt != null) ...[
                  const SizedBox(width: 8),
                  IconButton(
                    tooltip: 'Clear',
                    onPressed: () => setState(() => _dueAt = null),
                    icon: const Icon(Icons.clear),
                  ),
                ]
              ],
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () {
                final title = _titleController.text.trim();
                if (title.isEmpty) return;
                final desc = _descController.text.trim().isEmpty
                    ? null
                    : _descController.text.trim();
                final cubit = context.read<TodosCubit>();
                if (widget.todo == null) {
                  cubit.addTodo(title, description: desc, dueAt: _dueAt);
                } else {
                  cubit.editTodo(widget.todo!.id,
                      title: title, description: desc, dueAt: _dueAt);
                }
                Navigator.of(context).pop();
              },
              child: Text(widget.todo == null ? 'Add' : 'Save'),
            )
          ],
        ),
      ),
    );
  }
}


