import 'package:flutter/material.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';

class AppForwardArrow extends StatelessWidget {
  const AppForwardArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_forward_ios_outlined,
      size: 16,
      color: context.appColors.secondary,
    );
  }
}
