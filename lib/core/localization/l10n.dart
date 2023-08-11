import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('ar'),
  ];

  static String getFlag(String languageCode) {
    switch (languageCode) {
      case 'en':
        return '🇺🇸';
      default:
        return 'No Flag';
    }
  }
}
