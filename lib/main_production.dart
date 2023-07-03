import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'application.dart';
import 'initialize.dart';
import 'presentation/pages/error/unexpected_exception_dialog.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // アプリ実行前の初期化処理
  await Initialize().init();
  // エラー発生時の処理
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    runApp(
      UnexpectedErrorDialog(
        errorMessage: details.exceptionAsString(),
      ),
    );
  };
  // アプリ実行
  runApp(const ProviderScope(child: Application()));
}
