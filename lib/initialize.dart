import 'dart:async';

import 'package:layer_architecture_template/infrastructure/data_source/isar/isar_instance.dart';

class Initialize {
  Future<void> init() async {
    // アプリ実行前の初期化処理
    await IsarInstance().init();
  }
}
