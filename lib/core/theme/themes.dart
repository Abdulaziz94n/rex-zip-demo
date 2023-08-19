import 'package:flutter/material.dart';

import '/core/theme/colors_palette.dart';
import '/core/theme/colors_palette_extension.dart';
import '/core/theme/text_styles.dart';
import '/core/theme/text_theme_extension.dart';

class AppThemes {
  ThemeData lightTheme = ThemeData(
    buttonTheme: const ButtonThemeData(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColorsPalette.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: null,
    fontFamily: null, // replace with font family name,
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    extensions: [
      _lightTextThemeExtension,
      _lightThemeColorsExtension,
    ],
  );

  static const _lightThemeColorsExtension = AppColorsExtension(
    secondary: AppColorsPalette.secondary,
    green: AppColorsPalette.green,
    primary: AppColorsPalette.black,
    background: AppColorsPalette.background,
    black: AppColorsPalette.black,
    darkBlue: AppColorsPalette.darkblue,
    grey: AppColorsPalette.grey,
    lightGrey: AppColorsPalette.lightGrey,
    lightRed: AppColorsPalette.lightRed,
    onPrimary: AppColorsPalette.onPrimary,
    onSecondary: AppColorsPalette.onSecondary,
    onBackground: AppColorsPalette.black,
    white: AppColorsPalette.white,
  );

  static final _lightTextThemeExtension = TextThemeExtension(
    headlineLarge: AppTextStyles.headlineLarge,
    headlineMedium: AppTextStyles.headlineMedium,
    headlineSmall: AppTextStyles.headlineSmall,
    bodySmall: AppTextStyles.bodySmall,
    bodyMedium: AppTextStyles.bodyMedium,
    bodyLarge: AppTextStyles.bodyLarge,
  );
}
