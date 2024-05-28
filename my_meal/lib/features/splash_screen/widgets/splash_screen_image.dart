import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/images.dart';

class SplashScreenImage extends StatelessWidget {
  const SplashScreenImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimnesions.splashScreenImageSize,
      child: SvgPicture.asset(Images.splashScreen),
    );
  }
}
