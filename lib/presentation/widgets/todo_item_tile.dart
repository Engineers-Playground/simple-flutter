import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/todo.dart';
import '../bloc/todos_cubit.dart';
import 'add_edit_todo_sheet.dart';

class TodoItemTile extends StatelessWidget {
  const TodoItemTile({super.key, required this.todo});
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    final subtitleParts = <String>[];
    if (todo.description != null && todo.description!.isNotEmpty) {
      subtitleParts.add(todo.description!);
    }
    if (todo.dueAt != null) {
      subtitleParts.add('Due ${todo.dueAt!.toLocal().toString().split(' ').first}');
    }
    final subtitle = subtitleParts.isEmpty ? null : subtitleParts.join(' • ');
    const gradients = [
      [Color(0xFFF5576C), Color(0xFFF093FB)],
      [Color(0xFF4FACFE), Color(0xFF00F2FE)],
      [Color(0xFF43E97B), Color(0xFF38F9D7)],
      [Color(0xFFFA709A), Color(0xFFFEE140)],
    ];
    final pair = gradients[todo.id.hashCode % gradients.length];
    return Dismissible(
      key: ValueKey(todo.id),
      background: Container(
        color: Colors.green,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Icon(Icons.check, color: Colors.white),
      ),
      secondaryBackground: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      confirmDismiss: (direction) async {
        final cubit = context.read<TodosCubit>();
        if (direction == DismissDirection.startToEnd) {
          cubit.toggleTodo(todo.id);
          return false;
        } else {
          final res = await showDialog<bool>(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('Delete Todo'),
              content: const Text('Are you sure you want to delete this todo?'),
              actions: [
                TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
                FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('Delete')),
              ],
            ),
          );
          if (res == true) cubit.deleteTodo(todo.id);
          return res ?? false;
        }
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: pair,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: ListTile(
            onTap: () async {
              await showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                useSafeArea: true,
                builder: (_) => AddEditTodoSheet(todo: todo),
              );
            },
            leading: Checkbox(
              value: todo.isCompleted,
              onChanged: (_) => context.read<TodosCubit>().toggleTodo(todo.id),
            ),
            title: Text(
              todo.title,
              style: TextStyle(
                decoration: todo.isCompleted ? TextDecoration.lineThrough : null,
                color: Colors.white,
              ),
            ),
            subtitle: subtitle == null
                ? null
                : const Text(
                    '',
                  ),
            trailing: const Icon(Icons.chevron_right, color: Colors.white),
          ),
        ),
      ),
    );
  }
}


