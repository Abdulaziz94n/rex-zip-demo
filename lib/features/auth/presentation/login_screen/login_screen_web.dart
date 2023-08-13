import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/widgets/reusables/app_scaffold.dart';
import 'package:rex_zip/core/widgets/shared/main_background_image.dart';

class LoginScreenWeb extends ConsumerWidget {
  const LoginScreenWeb({
    super.key,
    this.textFieldWidth,
  });
  final double? textFieldWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MainBackgroundImage(
      child: AppScaffold(
        backgroundColor: Colors.transparent,
        body: ColoredBox(
          color: Colors.transparent,
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
