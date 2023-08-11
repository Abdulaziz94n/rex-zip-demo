import 'package:flutter/material.dart';

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  final Color primary;
  final Color secondary;
  final Color onPrimary;
  final Color onSecondary;
  final Color background;
  final Color green;
  final Color grey;
  final Color lightGrey;
  final Color lightRed;
  final Color darkBlue;
  final Color black;
  final Color white;

  const AppColorsExtension({
    required this.onPrimary,
    required this.onSecondary,
    required this.grey,
    required this.lightGrey,
    required this.lightRed,
    required this.darkBlue,
    required this.black,
    required this.white,
    required this.secondary,
    required this.primary,
    required this.green,
    required this.background,
  });

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? primary,
    Color? secondary,
    Color? onPrimary,
    Color? onSecondary,
    Color? background,
    Color? green,
    Color? grey,
    Color? lightGrey,
    Color? lightRed,
    Color? darkBlue,
    Color? black,
    Color? white,
  }) {
    return AppColorsExtension(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      onPrimary: onPrimary ?? this.onPrimary,
      onSecondary: onSecondary ?? this.onSecondary,
      background: background ?? this.background,
      green: green ?? this.green,
      grey: grey ?? this.grey,
      lightGrey: lightGrey ?? this.lightGrey,
      lightRed: lightRed ?? this.lightRed,
      darkBlue: darkBlue ?? this.darkBlue,
      black: black ?? this.black,
      white: white ?? this.white,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
      covariant ThemeExtension<AppColorsExtension>? other, double t) {
    if (other is! AppColorsExtension) {
      return this;
    }
    return AppColorsExtension(
      green: Color.lerp(green, other.green, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      background: Color.lerp(background, other.background, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      lightGrey: Color.lerp(lightGrey, other.lightGrey, t)!,
      lightRed: Color.lerp(lightRed, other.lightRed, t)!,
      darkBlue: Color.lerp(darkBlue, other.darkBlue, t)!,
      black: Color.lerp(black, other.black, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }
}
