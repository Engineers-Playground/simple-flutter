part of 'todos_cubit.dart';

enum TodosFilter { all, active, completed }

class TodosState extends Equatable {
  final List<Todo> todos;
  final TodosFilter filter;
  final String searchQuery;

  const TodosState({
    this.todos = const [],
    this.filter = TodosFilter.all,
    this.searchQuery = '',
  });

  List<Todo> get filteredTodos {
    Iterable<Todo> result = todos;
    if (filter == TodosFilter.active) {
      result = result.where((t) => !t.isCompleted);
    } else if (filter == TodosFilter.completed) {
      result = result.where((t) => t.isCompleted);
    }
    final q = searchQuery.trim().toLowerCase();
    if (q.isNotEmpty) {
      result = result.where((t) =>
          t.title.toLowerCase().contains(q) || (t.description ?? '').toLowerCase().contains(q));
    }
    return result.toList();
  }

  TodosState copyWith({
    List<Todo>? todos,
    TodosFilter? filter,
    String? searchQuery,
  }) {
    return TodosState(
      todos: todos ?? this.todos,
      filter: filter ?? this.filter,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }

  @override
  List<Object?> get props => [todos, filter, searchQuery];
}


