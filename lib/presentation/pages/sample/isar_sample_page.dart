import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:layer_architecture_template/presentation/component/base_scaffold.dart';

import '../../../domain/sample/sample_notifier.dart';
import '../../../infrastructure/data_source/isar/todo/todo_collection.dart';

class IsarSamplePage extends ConsumerWidget {
  const IsarSamplePage({super.key});

  static const String routeName = 'isar_sample_page';
  static const String routePath = 'isar_sample_page';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(sampleNotifierProvider.notifier);
    return BaseScaffold(
      isShowAppBar: true,
      appBarTitle: 'Isar Sample Page',
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              sliver: SliverToBoxAdapter(
                child: ElevatedButton(
                  onPressed: () async {
                    final todoList = await notifier.fetchTodoList();
                    for (final todo in todoList) {
                      print(todo);
                    }
                  },
                  child: const Text('Isar Fetch TodoList'),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              sliver: SliverToBoxAdapter(
                child: ElevatedButton(
                  onPressed: () async {
                    final todo = await notifier.fetchTodoById(1);
                    debugPrint(todo.toString());
                  },
                  child: const Text('Isar Fetch Single Todo'),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              sliver: SliverToBoxAdapter(
                child: ElevatedButton(
                  onPressed: () {
                    final newTodo = Todo()
                      ..title = 'test'
                      ..description = 'test'
                      ..isCompleted = false
                      ..createdAt = DateTime.now()
                      ..updatedAt = DateTime.now();
                    notifier.setTodoData(todoModel: newTodo);
                  },
                  child: const Text('Isar Store Todo'),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              sliver: SliverToBoxAdapter(
                child: ElevatedButton(
                  onPressed: () async {
                    final todo1 = await notifier.fetchTodoById(1);
                    if (todo1 == null) {
                      return;
                    }
                    // オブジェクトを上書きしていく
                    todo1
                      ..title = 'debug'
                      ..description = 'debug'
                      ..isCompleted = true
                      ..updatedAt = DateTime.now();
                    notifier.setTodoData(todoModel: todo1);
                  },
                  child: const Text('Isar Update Todo'),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              sliver: SliverToBoxAdapter(
                child: ElevatedButton(
                  onPressed: () {
                    notifier.deleteTodoData(id: 1);
                  },
                  child: const Text('Isar Delete Todo'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
