import 'package:flutter/material.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';

import '../../constants/breakpoints.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  final bool fromScreenSize;

  const ResponsiveLayout({
    Key? key,
    required this.mobile,
    this.tablet,
    this.desktop,
    this.fromScreenSize = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return fromScreenSize == false
        ? LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth >= Breakpoint.desktop) {
                return desktop ?? mobile;
              } else if (constraints.maxWidth >= Breakpoint.tablet) {
                return tablet ?? mobile;
              } else {
                return mobile;
              }
            },
          )
        : LayoutBuilder(
            builder: (context, _) {
              if (context.screenWidth >= Breakpoint.desktop) {
                return desktop ?? mobile;
              } else if (context.screenWidth >= Breakpoint.tablet) {
                return tablet ?? mobile;
              } else {
                return mobile;
              }
            },
          );
  }
}
