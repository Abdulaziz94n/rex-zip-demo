import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/api_const.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';
import 'package:rex_zip/core/widgets/shared/app_text_field.dart';
import 'package:rex_zip/features/auth/presentation/auth_controller.dart';

class LoginForm extends HookConsumerWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const textFieldWidth = 150.0;
    final nameCtrl =
        useTextEditingController(text: ApiConstants.clientUserName);
    final passwordCtrl =
        useTextEditingController(text: ApiConstants.clientPassword);
    return SizedBox(
      width: context.screenWidth / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppTextField.withController(
            width: textFieldWidth,
            controller: nameCtrl,
            label: 'kullanici adı',
          ),
          AppTextField.withController(
            width: textFieldWidth,
            controller: passwordCtrl,
            obscure: true,
            label: 'şifre',
          ),
          ElevatedButton(
              onPressed: () async {
                await ref.read(authController.notifier).login(
                      nameCtrl.text.trim(),
                      passwordCtrl.text.trim(),
                    );
              },
              child: const AppText(text: 'Giriş'))
        ],
      ),
    );
  }
}
