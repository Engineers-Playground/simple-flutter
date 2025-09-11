import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/todo.dart';
import '../bloc/todos_cubit.dart';
import '../widgets/add_edit_todo_sheet.dart';
import '../widgets/todo_item_tile.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({super.key});

  @override
  State<TodosPage> createState() => _TodosPageState();
}

enum PeriodFilter { today, month, year }

class _TodosPageState extends State<TodosPage> {
  final TextEditingController _searchController = TextEditingController();
  PeriodFilter _period = PeriodFilter.today;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      context.read<TodosCubit>().setSearchQuery(_searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            // Decorative background card header with title and search
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Builder(
                  builder: (context) {
                    final scheme = Theme.of(context).colorScheme;
                    return Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [scheme.primary, scheme.tertiary],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'My Todos',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(color: scheme.onPrimary),
                                ),
                                const Spacer(),
                                _FilterMenu(color: scheme.onPrimary),
                                const SizedBox(width: 8),
                                _PeriodMenu(
                                  value: _period,
                                  onChanged: (p) => setState(() => _period = p),
                                  color: scheme.onPrimary,
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            TextField(
                              controller: _searchController,
                              style: TextStyle(color: scheme.onPrimary),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: scheme.onPrimary.withOpacity(0.08),
                                hintText: 'Search tasks...',
                                hintStyle: TextStyle(
                                  color: scheme.onPrimary.withOpacity(0.9),
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: scheme.onPrimary,
                                ),
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: _StatsHeader(),
              ),
            ),
            BlocBuilder<TodosCubit, TodosState>(
              builder: (context, state) {
                List<Todo> todos = state.filteredTodos;
                final now = DateTime.now();
                bool sameDay(DateTime a, DateTime b) =>
                    a.year == b.year && a.month == b.month && a.day == b.day;
                if (_period == PeriodFilter.today) {
                  todos = todos
                      .where((t) => t.dueAt == null || sameDay(t.dueAt!, now))
                      .toList();
                } else if (_period == PeriodFilter.month) {
                  todos = todos
                      .where(
                        (t) =>
                            t.dueAt == null ||
                            (t.dueAt!.year == now.year &&
                                t.dueAt!.month == now.month),
                      )
                      .toList();
                } else if (_period == PeriodFilter.year) {
                  todos = todos
                      .where(
                        (t) => t.dueAt == null || t.dueAt!.year == now.year,
                      )
                      .toList();
                }
                if (todos.isEmpty) {
                  return const SliverFillRemaining(
                    hasScrollBody: false,
                    child: _EmptyView(),
                  );
                }
                return SliverList.separated(
                  itemCount: todos.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final todo = todos[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: TodoItemTile(todo: todo),
                    );
                  },
                );
              },
            ),
            const SliverPadding(padding: EdgeInsets.only(bottom: 96)),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            await showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              useSafeArea: true,
              builder: (_) => const AddEditTodoSheet(),
            );
          },
          icon: const Icon(Icons.add),
          label: const Text('Add Todo'),
        ),
        // bottom navigation removed per request
      ),
    );
  }
}

class _FilterMenu extends StatelessWidget {
  const _FilterMenu({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodosCubit, TodosState>(
      builder: (context, state) {
        return PopupMenuButton<TodosFilter>(
          tooltip: 'Filter',
          onSelected: (f) => context.read<TodosCubit>().setFilter(f),
          icon: Icon(Icons.filter_list, color: color),
          itemBuilder: (context) => [
            CheckedPopupMenuItem(
              value: TodosFilter.all,
              checked: state.filter == TodosFilter.all,
              child: const Text('All'),
            ),
            CheckedPopupMenuItem(
              value: TodosFilter.active,
              checked: state.filter == TodosFilter.active,
              child: const Text('Active'),
            ),
            CheckedPopupMenuItem(
              value: TodosFilter.completed,
              checked: state.filter == TodosFilter.completed,
              child: const Text('Completed'),
            ),
          ],
        );
      },
    );
  }
}

class _StatsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodosCubit, TodosState>(
      builder: (context, state) {
        final total = state.todos.length;
        final completed = state.todos.where((t) => t.isCompleted).length;
        final percent = total == 0 ? 0.0 : completed / total;
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Progress',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    Text('$completed / $total'),
                  ],
                ),
                const SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(value: percent, minHeight: 10),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.inbox_outlined,
              size: 64,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 12),
            Text(
              'No todos yet',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            Text(
              'Tap "+" to add your first task',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _PeriodMenu extends StatelessWidget {
  const _PeriodMenu({
    required this.value,
    required this.onChanged,
    required this.color,
  });

  final PeriodFilter value;
  final ValueChanged<PeriodFilter> onChanged;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PeriodFilter>(
      tooltip: 'Period',
      initialValue: value,
      onSelected: onChanged,
      icon: Icon(Icons.more_time_outlined, color: color),
      itemBuilder: (context) => [
        CheckedPopupMenuItem(
          value: PeriodFilter.today,
          checked: value == PeriodFilter.today,
          child: const Text('Today'),
        ),
        CheckedPopupMenuItem(
          value: PeriodFilter.month,
          checked: value == PeriodFilter.month,
          child: const Text('Month'),
        ),
        CheckedPopupMenuItem(
          value: PeriodFilter.year,
          checked: value == PeriodFilter.year,
          child: const Text('Year'),
        ),
      ],
    );
  }
}
