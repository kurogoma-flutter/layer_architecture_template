import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:layer_architecture_template/presentation/pages/isar/isar_sample_page.dart';

import '../../../domain/sample/sample_notifier.dart';
import '../../router/app_router.dart';
import '../sample_detail/sample_detail_page.dart';

class SampleHomePage extends HookConsumerWidget {
  const SampleHomePage({super.key});

  static const routePath = '/home';
  static const routeName = 'homePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sampleNotifierProvider); // stateの呼び出し
    final notifier = ref.read(sampleNotifierProvider.notifier); // notifierの呼び出し

    // 使い方
    // state : state.sampleList
    // notifier : notifier.init()

    // Widget Size

    // Widget Padding

    // Widget Style

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sample Home Page',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AppRouter().goNamed(
                  context,
                  SampleDetailPage.routeName,
                  params: {
                    'parameter': 'test',
                  },
                );
              },
              child: const Text('Go to Detail Page'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AppRouter().goNamed(
                  context,
                  IsarSamplePage.routeName,
                );
              },
              child: const Text('Go to Local DB Page'),
            ),
          ],
        ),
      ),
    );
  }
}
