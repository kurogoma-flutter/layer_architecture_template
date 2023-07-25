import 'package:isar/isar.dart';
import 'package:layer_architecture_template/infrastructure/data_source/isar/todo/todo_collection.dart';

import '../../../../isar_instance.dart';

class TodoCollectionDataSource {
  final isar = IsarInstance().isar;
  // 一覧取得
  Future<List<Todo>> fetchTodoList() async {
    return isar.todos.where().findAll();
  }

  // 単体データ取得
  Future<Todo?> fetchTodoById(int id) async {
    return isar.todos.where().idEqualTo(id).findFirst();
  }

  // データ追加 / 更新
  Future<void> setTodoData({
    required Todo todoModel,
  }) async {
    // データ追加
    await isar.writeTxn(() async {
      await isar.todos.put(todoModel);
    });
  }

  // データ削除
  Future<void> deleteTodoData({
    required int id,
  }) async {
    // データ削除
    await isar.writeTxn(() async {
      await isar.todos.delete(id);
    });
  }
}
