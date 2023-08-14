import 'package:flutter/material.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    this.color,
    this.height,
    this.thickness,
    this.endIndent,
    this.indent,
  });
  final Color? color;
  final double? height;
  final double? endIndent;
  final double? indent;
  final double? thickness;
  @override
  Widget build(BuildContext context) {
    return Divider(
      endIndent: endIndent,
      indent: indent,
      color: color ?? context.appColors.lightGrey,
      height: height ?? 1.0,
      thickness: thickness ?? 2,
    );
  }
}
