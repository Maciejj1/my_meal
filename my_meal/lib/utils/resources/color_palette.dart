import 'package:flutter/material.dart';
import 'package:my_meal/utils/theme/theme_constants.dart';

class ColorPalette {
  ColorPalette._();

  static bool _initialized = false;

  static void init(BuildContext context) {
    if (!_initialized) {
      _initialized = true;
    }
  }

  // Colors
  static Color get splashScreenBackground => const Color(0xFF70B9BE);
  static Color get splashScreenButton => const Color(0xFF042628);
  static Color get defaultAppBarBackground => const Color.fromARGB(255, 255, 206, 46);
  static Color get defaultAppBarText => const Color(0xFF2C2B2B);
  static Color get defaultBannerContainerColor =>
      DarkModeSwitch.isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF2C2B2B);
  static Color get defaultBannerTextColor =>
      DarkModeSwitch.isDarkMode ? const Color(0xFF2C2B2B) : const Color(0xFFFFFFFF);

  static Color get defaultBackgroundPage =>
      DarkModeSwitch.isDarkMode ? const Color(0xFF1A1A1A) : const Color(0xFFFFFFFF);
  static Color get defaultCardBackgroundColor =>
      DarkModeSwitch.isDarkMode ? const Color.fromARGB(255, 37, 37, 37) : const Color(0xFFF5F2F2);
  static Color get defaultTextColor => DarkModeSwitch.isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF2C2B2B);
}
