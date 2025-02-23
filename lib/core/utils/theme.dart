import 'package:flutter/material.dart';
import 'app_colors.dart';

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.beigeColor,
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.redPinkMain,
    onPrimary: AppColors.milkWhite,
    secondary: AppColors.pink,
    onSecondary: AppColors.pinkSub,
    error: Colors.red,
    onError: Colors.white,
    surface: AppColors.beigeColor,
    onSurface: Colors.white,
  ),
);

class AppThemes {
  static final darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: AppColors.redPinkMain,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    fontFamily: "Poppins",
    colorScheme: AppColors.lightColorScheme,
  );
}
