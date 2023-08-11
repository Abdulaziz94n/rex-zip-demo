import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/core/constants/sizes.dart';
import '../../extensions/build_context_extension.dart';
import 'app_text.dart';

class AppSuccessAlert extends StatelessWidget {
  const AppSuccessAlert({
    super.key,
    required this.contentText,
    this.onAction,
    this.pop,
  });
  final String contentText;
  final VoidCallback? onAction;
  final VoidCallback? pop;

  @override
  Widget build(BuildContext context) {
    return context.isIos
        ? CupertinoAlertDialog(
            content: SizedBox(
              height: Sizes.dialogDefaultHeight,
              child: Center(
                child: AppText(
                  style: context.appTextTheme.bodyLarge!,
                  text: contentText,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        : AlertDialog(
            actionsAlignment: MainAxisAlignment.end,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            buttonPadding: EdgeInsets.zero,
            actionsPadding: EdgeInsets.zero,
            actionsOverflowButtonSpacing: 0,
            actionsOverflowAlignment: OverflowBarAlignment.end,
            content: SizedBox(
              height: Sizes.dialogDefaultHeight,
              child: Center(
                child: AppText(
                  style: context.appTextTheme.bodyLarge!,
                  text: contentText,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
  }
}
