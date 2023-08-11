import 'package:flutter/material.dart';

import '../../constants/breakpoints.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveLayout({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < Breakpoint.tablet;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < Breakpoint.desktop &&
      MediaQuery.of(context).size.width >= Breakpoint.tablet;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= Breakpoint.desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= Breakpoint.desktop) {
          return desktop;
        } else if (constraints.maxWidth >= Breakpoint.tablet) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
