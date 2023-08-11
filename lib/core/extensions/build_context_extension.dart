import 'package:flutter/material.dart';

import '/core/theme/colors_palette_extension.dart';
import '/core/theme/text_theme_extension.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  bool get isIos => theme.platform == TargetPlatform.iOS;

  bool get isAndroid => theme.platform == TargetPlatform.android;

  Locale get currentLocale => Localizations.localeOf(this);

  TextDirection get textDirection => Directionality.of(this);

  bool get isRtl => textDirection == TextDirection.rtl;

  // AppLocalizations get tr => AppLocalizations.of(this)!;

  TextThemeExtension get textThemeExtension =>
      theme.extension<TextThemeExtension>()!;

  AppColorsExtension get appColors => theme.extension<AppColorsExtension>()!;

  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;

  Size get screenSize => MediaQuery.sizeOf(this);

  TextTheme get appTextTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  Color get primaryColorDark => Theme.of(this).primaryColorDark;

  Color get primaryColorLight => Theme.of(this).primaryColorLight;

  bool get isKeyboardOpen => MediaQuery.viewInsetsOf(this).bottom > 0;

  EdgeInsets get keyboardPadding => MediaQuery.viewInsetsOf(this);

  bool get isMobile => screenWidth <= 800;

  bool get isTablet => screenWidth < 1024.0 && screenWidth >= 650.0;

  bool get isSmallTablet => screenWidth < 650.0 && screenWidth > 500.0;

  bool get isDesktop => screenWidth >= 1024.0;

  bool get isSmall => screenWidth < 850.0 && screenWidth >= 560.0;

  bool get isDarkMode => theme.brightness == Brightness.dark;

  // getter for orientations can be added

  showSnackBar({required String message, Color? backgroundColor}) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: backgroundColor,
      ),
    );
  }

  showAppDialog({required Widget dialog}) {
    return showDialog(context: this, builder: (context) => dialog);
  }

  Future showBottomSheet(
    Widget child, {
    bool isScrollControlled = true,
    bool isDismissible = true,
    Color? backgroundColor,
    Color? barrierColor,
  }) {
    return showModalBottomSheet(
      context: this,
      barrierColor: barrierColor,
      isDismissible: isDismissible,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor,
      builder: (context) => child,
    );
  }
}
