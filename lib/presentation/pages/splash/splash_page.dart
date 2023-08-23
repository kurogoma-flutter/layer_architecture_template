import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:layer_architecture_template/presentation/component/base_scaffold.dart';
import 'package:layer_architecture_template/presentation/pages/sample_home/sample_home_page.dart';
import 'package:layer_architecture_template/presentation/router/app_router.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  static const routePath = '/';
  static const routeName = 'splashPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // splash起動処理等記述

    return BaseScaffold(
      isShowAppBar: false,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/images/kurogoma-splash.png',
              filterQuality: FilterQuality.medium,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 140,
            child: ElevatedButton(
              onPressed: () {
                AppRouter().pushNamed(
                  context,
                  SampleHomePage.routeName,
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(
                  'Start App',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            child: ElevatedButton(
              onPressed: () {
                AppRouter().launchURL('https://github.com/Kurogoma939');
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(
                  'Launch Github',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
