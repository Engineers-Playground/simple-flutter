import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/todo.dart';

part 'todos_state.dart';

class TodosCubit extends HydratedCubit<TodosState> {
  TodosCubit() : super(const TodosState());

  void addTodo(String title, {String? description, DateTime? dueAt}) {
    final todo = Todo(
      id: const Uuid().v4(),
      title: title.trim(),
      description: description?.trim(),
      createdAt: DateTime.now(),
      dueAt: dueAt,
    );
    emit(state.copyWith(todos: [todo, ...state.todos]));
  }

  void toggleTodo(String id) {
    final updated = state.todos
        .map((t) => t.id == id ? t.copyWith(isCompleted: !t.isCompleted) : t)
        .toList();
    emit(state.copyWith(todos: updated));
  }

  void deleteTodo(String id) {
    emit(state.copyWith(todos: state.todos.where((t) => t.id != id).toList()));
  }

  void editTodo(String id, {String? title, String? description, DateTime? dueAt}) {
    final updated = state.todos.map((t) {
      if (t.id != id) return t;
      return t.copyWith(
        title: title?.trim(),
        description: description?.trim(),
        dueAt: dueAt,
      );
    }).toList();
    emit(state.copyWith(todos: updated));
  }

  void setSearchQuery(String query) {
    emit(state.copyWith(searchQuery: query));
  }

  void setFilter(TodosFilter filter) {
    emit(state.copyWith(filter: filter));
  }

  @override
  TodosState? fromJson(Map<String, dynamic> json) {
    try {
      final list = (json['todos'] as List<dynamic>).cast<Map<String, dynamic>>();
      return TodosState(
        todos: list.map(Todo.fromMap).toList(),
        filter: TodosFilter.values[json['filter'] as int],
        searchQuery: json['searchQuery'] as String? ?? '',
      );
    } catch (_) {
      return const TodosState();
    }
  }

  @override
  Map<String, dynamic>? toJson(TodosState state) {
    return {
      'todos': state.todos.map((t) => t.toMap()).toList(),
      'filter': state.filter.index,
      'searchQuery': state.searchQuery,
    };
  }
}


