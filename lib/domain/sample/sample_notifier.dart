import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../infrastructure/data_source/isar/todo/todo_collection.dart';
import 'sample_service.dart';
import 'sample_state.dart';

final sampleNotifierProvider =
    StateNotifierProvider.autoDispose<SampleNotifier, SampleState>((ref) {
  return SampleNotifier(
    sampleService: ref.read(sampleService),
  )..init();
});

class SampleNotifier extends StateNotifier<SampleState> {
  SampleNotifier({
    required this.sampleService,
  }) : super(const SampleState());

  final SampleService sampleService;

  Future<void> init() async {
    // 通常のFutureのサンプル
    final sampleList = await sampleService.fetchSampleModelList();
    state = state.copyWith(
      sampleList: sampleList,
    );

    // AsyncValueのサンプル
    final futureSampleModelList = await sampleService.fetchSampleModelList();
    state = state.copyWith(
      futureSampleList: AsyncValue.data(futureSampleModelList),
    );
  }

  /// Isar: 一覧データ取得
  Future<List<Todo>> fetchTodoList() async {
    return await sampleService.fetchTodoList();
  }

  /// Isar: 単体データ取得
  Future<Todo?> fetchTodoById(int id) async {
    return await sampleService.fetchTodoById(id);
  }

  /// Isar: データ追加 / 更新
  Future<void> setTodoData({
    required Todo todoModel,
  }) async {
    await sampleService.setTodoData(todoModel: todoModel);
  }

  /// Isar: データ削除
  Future<void> deleteTodoData({
    required int id,
  }) async {
    await sampleService.deleteTodoData(id: id);
  }
}
