import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/extensions/string_extension.dart';
import 'package:rex_zip/core/widgets/shared/app_screen_header.dart';
import 'package:rex_zip/core/widgets/shared/app_secondary_button.dart';
import 'package:rex_zip/core/widgets/shared/app_text_field.dart';
import 'package:rex_zip/core/widgets/shared/spacing_widgets.dart';
import 'package:rex_zip/features/auth/presentation/auth_controller.dart';

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final emailCtrl = useTextEditingController();
    final passwordCtrl = useTextEditingController();
    final fontColor = context.appColors.onBackground;
    const textFieldWidth = 300.0;
    return Form(
      key: formKey,
      child: ScreenBody(
        title: 'Kullanıcı Ayarları'.hardCoded,
        children: [
          CircleAvatar(
            radius: Sizes.defaultCircleRadius,
            backgroundColor: context.appColors.lightGrey,
            child: const Text('Logo Ekle'),
          ),
          const VerticalSpacingWidget(Sizes.p16),
          AppTextField.withController(
            width: textFieldWidth,
            fontColor: fontColor,
            controller: passwordCtrl,
            label: 'Şifre Değiştir'.hardCoded,
          ),
          const VerticalSpacingWidget(Sizes.p16),
          AppTextField.withController(
            width: textFieldWidth,
            fontColor: fontColor,
            controller: emailCtrl,
            label: 'E-mail Değiştir'.hardCoded,
          ),
          const VerticalSpacingWidget(Sizes.p48),
          SecondaryButton(
            text: 'Kaydet'.hardCoded,
            onPressed: () {
              ref.read(authController.notifier).changeUserEmailPassword(
                  email: emailCtrl.text, newPassowrd: passwordCtrl.text);
            },
          )
        ],
      ),
    );
  }
}
