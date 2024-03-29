import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../cores/logger/logger.dart';
import '../../router/app_router.dart';
import '../splash/splash_page.dart';

/// try-catchで捌ききれなかったエラーを表示するダイアログ
class UnexpectedErrorDialog extends HookConsumerWidget {
  const UnexpectedErrorDialog({
    required this.errorMessage,
    super.key,
  });
  final String errorMessage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        logger.e(errorMessage);
        return;
      },
      const [],
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 50,
          ),
          const SizedBox(height: 10),
          const Text(
            'エラー!',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => AppRouter().goNamed(
              context,
              SplashPage.routeName,
            ),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
