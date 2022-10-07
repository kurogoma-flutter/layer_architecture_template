import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data_source/sample/sample_remote_data_source.dart';
import '../../model/sample/sample_model.dart';

final sampleRepository =
    Provider((ref) => SampleRepository(sampleDataSource: SampleDataSource()));

class SampleRepository {
  SampleRepository({
    required this.sampleDataSource,
  });

  final SampleDataSource sampleDataSource;

  Future<List<SampleModel>> fetchSampleModelList() async {
    return sampleDataSource.fetchSampleModelList();
  }
}
