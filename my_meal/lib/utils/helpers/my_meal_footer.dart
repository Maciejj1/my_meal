import 'package:flutter/material.dart';
import 'package:my_meal/utils/resources/color_palette.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/styles.dart';

class MyMealFooter extends StatelessWidget {
  const MyMealFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: ColorPalette.defaultAppBarBackground,
      child: SizedBox(
        height: Dimnesions.default50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'App Author: Maciej Wawryszuk',
              style: MyMealStyles().defaultProductPageTitleStyleOnlyBlack,
            ),
          ],
        ),
      ),
    );
  }
}
