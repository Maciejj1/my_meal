import 'package:flutter/material.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/styles.dart';

class SplashScreenSubTitle extends StatelessWidget {
  const SplashScreenSubTitle({
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
              'Help your path to health goals with happiness',
              style: MyMealStyles().splashScreenSubTitle,
            ),
          ),
        ],
      ),
    );
  }
}
