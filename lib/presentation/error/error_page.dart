import 'package:flutter/material.dart';

class CommonErrorPage extends StatelessWidget {
  const CommonErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '予期せぬエラーが発生しました。\nアプリを再起動してください。',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '再起動しても解決しない場合は、\nお手数ですがお問い合わせください。',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
