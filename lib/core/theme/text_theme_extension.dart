import 'package:flutter/material.dart';

class TextThemeExtension extends ThemeExtension<TextThemeExtension> {
  TextThemeExtension({
    required this.bodySmall,
    required this.bodyMedium,
    required this.bodyLarge,
    required this.headlineSmall,
    required this.headlineMedium,
    required this.headlineLarge,
  });
  final TextStyle bodySmall;
  final TextStyle bodyMedium;
  final TextStyle? bodyLarge;
  final TextStyle? headlineSmall;
  final TextStyle? headlineMedium;
  final TextStyle? headlineLarge;

  @override
  TextThemeExtension copyWith({
    TextStyle? bodySmall,
    TextStyle? bodyMedium,
    TextStyle? bodyLarge,
    TextStyle? headlineSmall,
    TextStyle? headlineMedium,
    TextStyle? headlineLarge,
  }) {
    return TextThemeExtension(
      bodySmall: bodySmall ?? this.bodySmall,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineLarge: headlineLarge ?? this.headlineLarge,
    );
  }

  @override
  ThemeExtension<TextThemeExtension> lerp(
      covariant ThemeExtension<TextThemeExtension>? other, double t) {
    if (other is! TextThemeExtension) {
      return this;
    }
    return TextThemeExtension(
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t)!,
    );
  }
}
