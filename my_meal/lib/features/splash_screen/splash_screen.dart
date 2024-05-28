import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_meal/features/splash_screen/widgets/splash_screen_button.dart';
import 'package:my_meal/features/splash_screen/widgets/splash_screen_image.dart';
import 'package:my_meal/features/splash_screen/widgets/splash_screen_subtitle.dart';
import 'package:my_meal/features/splash_screen/widgets/splash_screen_title.dart';
import 'package:my_meal/utils/resources/color_palette.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.splashScreenBackground,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SplashScreenImage(),
                Gap(Dimnesions.defaultHorizontalPadding),
                SplashScreenTitle(),
                Gap(Dimnesions.defaultHorizontalPadding),
                SplashScreenSubTitle(),
                Gap(Dimnesions.defaultHorizontalPadding),
                SplashScreenButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
