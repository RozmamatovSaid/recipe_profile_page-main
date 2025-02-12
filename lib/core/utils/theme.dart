import 'package:flutter/material.dart';
import 'app_colors.dart';

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.MainColor,
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.ReddishPink,
    onPrimary: AppColors.milkWhite,
    secondary: AppColors.Pink,
    onSecondary: AppColors.PinkSub,
    error: Colors.red,
    onError: Colors.white,
    surface: AppColors.MainColor,
    onSurface: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.MainColor,
    surfaceTintColor: Colors.transparent,
  ),
);
