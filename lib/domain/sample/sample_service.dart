import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../infrastructure/data_source/isar/todo/todo_collection.dart';
import '../../infrastructure/model/sample/sample_model.dart';
import '../../infrastructure/repository/sample/sample_repository.dart';

final sampleService = Provider.autoDispose(
  (ref) => SampleService(
    sampleRepository: ref.read(sampleRepository),
  ),
);

class SampleService {
  SampleService({
    required this.sampleRepository,
  });

  final SampleRepository sampleRepository;

  Future<List<SampleModel>> fetchSampleModelList() async {
    return sampleRepository.fetchSampleModelList();
  }

  /// Isar: 一覧データ取得
  Future<List<Todo>> fetchTodoList() async {
    return sampleRepository.fetchTodoList();
  }

  /// Isar: 単体データ取得
  Future<Todo?> fetchTodoById(int id) async {
    return sampleRepository.fetchTodoById(id);
  }

  /// Isar: データ追加 / 更新
  Future<void> setTodoData({
    required Todo todoModel,
  }) async {
    return sampleRepository.setTodoData(todoModel: todoModel);
  }

  /// Isar: データ削除
  Future<void> deleteTodoData({
    required int id,
  }) async {
    return sampleRepository.deleteTodoData(id: id);
  }
}
