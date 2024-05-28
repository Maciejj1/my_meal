import 'package:flutter/material.dart';
import 'package:my_meal/utils/resources/color_palette.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';

class MyMealStyles {
  TextStyle get defaultProductPageTitleStyle => TextStyle(
      color: ColorPalette.defaultTextColor,
      fontSize: Dimnesions.defaultTitleFontSize,
      fontWeight: FontWeight.bold,
      fontFamily: 'Inter');
  TextStyle get defaultProductDeifficulty => TextStyle(
      color: ColorPalette.defaultTextColor,
      fontSize: Dimnesions.defaultSubTitleFontSize,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter');
  TextStyle get defaultProductPageTextListStyle => TextStyle(
      color: ColorPalette.defaultTextColor,
      fontSize: Dimnesions.defaultSubTitleFontSize,
      fontWeight: FontWeight.bold,
      fontFamily: 'Inter');
  TextStyle get defaultProductPageTitleStyleOnlyBlack => TextStyle(
      color: ColorPalette.defaultAppBarText,
      fontSize: Dimnesions.defaultTitleFontSize,
      fontWeight: FontWeight.bold,
      fontFamily: 'Inter');
  TextStyle get appBarTextStyle => TextStyle(
      fontSize: Dimnesions.defaultTitleFontSize,
      fontWeight: FontWeight.w500,
      color: ColorPalette.defaultAppBarText,
      fontFamily: 'Inter');
  TextStyle get defaultBannerTextStyleForProducts => TextStyle(
      color: ColorPalette.defaultBannerTextColor,
      fontSize: Dimnesions.defaultTitleFontSize,
      fontWeight: FontWeight.bold,
      fontFamily: 'Inter');
  TextStyle get defaultBannerTextStyle =>
      const TextStyle(color: Colors.white, fontSize: Dimnesions.defaultTitleFontSize, fontFamily: 'Inter');
  TextStyle get splashScreenTitle => const TextStyle(
      color: Colors.white,
      fontSize: Dimnesions.splashScreenTitleSize,
      fontWeight: FontWeight.bold,
      fontFamily: 'Inter');
  TextStyle get splashScreenSubTitle => const TextStyle(
      color: Colors.white,
      fontSize: Dimnesions.splashScreenSubTitleSize,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter');

  ButtonStyle get splashScreenButtonStyle => ElevatedButton.styleFrom(
      backgroundColor: ColorPalette.splashScreenButton,
      fixedSize: const Size(Dimnesions.default250, Dimnesions.default50),
      foregroundColor: Colors.white);
  ButtonStyle get productButton => ElevatedButton.styleFrom(
        backgroundColor: ColorPalette.defaultAppBarBackground,
        foregroundColor: ColorPalette.defaultAppBarText,
      );

  BoxDecoration get productCard => BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(Dimnesions.radiusCircular),
            bottomRight: Radius.circular(Dimnesions.radiusCircular)),
        color: ColorPalette.defaultCardBackgroundColor,
      );
}
