import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/string_extension.dart';
import 'package:rex_zip/core/widgets/shared/app_border_textfield.dart';
import 'package:rex_zip/core/widgets/shared/spacing_widgets.dart';

class ContactForm extends HookConsumerWidget {
  const ContactForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final fullNameCtrl = useTextEditingController();
    final emailCtrl = useTextEditingController();
    final phoneCtrl = useTextEditingController();
    final noteCtrl = useTextEditingController();
    final attachment = useState(null);
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppBorderedTextField(
            controller: fullNameCtrl,
            label: 'ad soyad'.hardCoded,
          ),
          const VerticalSpacingWidget(Sizes.p8),
          AppBorderedTextField(
            controller: emailCtrl,
            label: 'mail'.hardCoded,
          ),
          const VerticalSpacingWidget(Sizes.p8),
          AppBorderedTextField(
            controller: phoneCtrl,
            label: 'telefon'.hardCoded,
          ),
          const VerticalSpacingWidget(Sizes.p8),
          AppBorderedTextField(
            controller: noteCtrl,
            label: 'not'.hardCoded,
            maxLines: 5,
          ),
          const VerticalSpacingWidget(Sizes.p8),
          AppBorderedTextField(
            controller: fullNameCtrl,
            enabled: false,
            label: 'dosya ekle'.hardCoded,
          ),
        ],
      ),
    );
  }
}
