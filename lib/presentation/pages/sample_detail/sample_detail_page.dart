import 'package:flutter/material.dart';

class SampleDetailPage extends StatelessWidget {
  const SampleDetailPage({
    super.key,
    required this.parameter,
  });

  static const routePath = 'sample_detail'; // ネストするのでスラッシュ不要
  static const routeName = 'sampleDetailPage';

  final String parameter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sample Detail Page',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Text(
              'parameter: $parameter',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
