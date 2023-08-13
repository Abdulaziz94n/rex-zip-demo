import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/utils/utils.dart';
import 'package:rex_zip/core/widgets/reusables/responsive_layout.dart';
import 'package:rex_zip/features/auth/presentation/auth_controller.dart';
import 'package:rex_zip/features/auth/presentation/login_screen/login_screen_mobile.dart';
import 'package:rex_zip/features/auth/presentation/login_screen/login_screen_web.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authController, (previous, next) {
      Utils.handleAsyncVal(context: context, previous: previous, next: next);
    });
    return const ResponsiveLayout(
      mobile: LoginScreenMobile(),
      desktop: LoginScreenWeb(),
    );
  }
}
