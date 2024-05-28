import 'package:flutter/material.dart';
import 'package:my_meal/my_meal.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/styles.dart';

class SplashScreenTitle extends StatelessWidget {
  const SplashScreenTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimnesions.defaultHorizontalPadding),
            child: Text(
              'Welcome to MyMeal',
              style: MyMealStyles().splashScreenTitle,
            ),
          ),
        ],
      ),
    );
  }
}
