import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_meal/utils/resources/styles.dart';

class SplashScreenButton extends StatelessWidget {
  const SplashScreenButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: MyMealStyles().splashScreenButtonStyle,
        onPressed: () {
          context.go('/dashboard');
        },
        child: const Text('Get Started'));
  }
}
