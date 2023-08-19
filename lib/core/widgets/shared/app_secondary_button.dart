import 'package:flutter/material.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.defaultButtonHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: context.appColors.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.defaultBorderRadius),
            side: BorderSide(color: context.appColors.black),
          ),
        ),
        onPressed: onPressed,
        child: AppText(text: text),
      ),
    );
  }
}
