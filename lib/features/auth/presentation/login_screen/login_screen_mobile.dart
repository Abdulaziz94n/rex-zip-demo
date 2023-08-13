import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/widgets/reusables/app_scaffold.dart';
import 'package:rex_zip/core/widgets/shared/main_background_image.dart';
import 'package:rex_zip/features/auth/presentation/login_screen/widgets/login_form.dart';

class LoginScreenMobile extends ConsumerWidget {
  const LoginScreenMobile({
    super.key,
    this.textFieldwidth,
  });
  final double? textFieldwidth;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MainBackgroundImage(
      child: AppScaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
