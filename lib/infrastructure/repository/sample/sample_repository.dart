import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:layer_architecture_template/infrastructure/data_source/isar/todo/todo_collection.dart';
import 'package:layer_architecture_template/infrastructure/data_source/isar/todo/todo_collection_data_source.dart';

import '../../data_source/sample/sample_remote_data_source.dart';
import '../../model/sample/sample_model.dart';

final sampleRepository = Provider(
  (ref) => SampleRepository(
    sampleDataSource: SampleDataSource(),
    todoCollectionDataSource: TodoCollectionDataSource(),
  ),
);

class SampleRepository {
  SampleRepository({
    required this.sampleDataSource,
    required this.todoCollectionDataSource,
  });

  final SampleDataSource sampleDataSource;
  final TodoCollectionDataSource todoCollectionDataSource;

  /// 一覧データ取得
  Future<List<SampleModel>> fetchSampleModelList() async {
    return sampleDataSource.fetchSampleModelList();
  }

  /// Isar: 一覧データ取得
  Future<List<Todo>> fetchTodoList() async {
    return todoCollectionDataSource.fetchTodoList();
  }

  /// Isar: 単体データ取得
  Future<Todo?> fetchTodoById(int id) async {
    return todoCollectionDataSource.fetchTodoById(id);
  }

  /// Isar: データ追加 / 更新
  Future<void> setTodoData({
    required Todo todoModel,
  }) async {
    return todoCollectionDataSource.setTodoData(todoModel: todoModel);
  }

  /// Isar: データ削除
  Future<void> deleteTodoData({
    required int id,
  }) async {
    return todoCollectionDataSource.deleteTodoData(id: id);
  }
}
