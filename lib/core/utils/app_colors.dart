import 'package:flutter/material.dart';

class AppColors {
  static const Color beigeColor = Color(0xFF1C0F0D);
  static const Color textColor = Color(0xFF3E2823);
  static const Color redPinkMain = Color(0xFFFD5D69);
  static const Color pink = Color(0xFFFFC6C9);
  static const Color pinkSub = Color(0xFFEC888D);
  static const Color milkWhite = Color(0xFFFFFDF9);

  static final lightColorScheme = ColorScheme(
    brightness: Brightness.dark,
    surface: beigeColor,
    onSurface: Colors.white,
    primary: redPinkMain,
    onPrimary: Colors.white,
    secondary: pink,
    onSecondary: pinkSub,
    error: redPinkMain,
    onError: Colors.white,
  );
}
