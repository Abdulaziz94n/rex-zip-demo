import 'package:flutter/material.dart';

const _semiBold = FontWeight.w600;

abstract class AppTextStyles {
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 30,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 25,
    fontWeight: _semiBold,
  );
  static const TextStyle headlineSmall = TextStyle(
    fontSize: 20,
  );
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
  );
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 15,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
  );
}
