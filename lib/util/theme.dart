import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_textstyle.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    appBarTheme: AppBarTheme(
      color: AppColors.primaryColor,
    ),
  );

  static const TextTheme regular = TextTheme(
    headline1: AppTextStyle.headline1,
  );

  // You can define more themes, e.g., dark theme, etc., if needed.
}
