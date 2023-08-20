import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/extensions/string_extension.dart';
import 'package:rex_zip/core/widgets/reusables/app_divider.dart';
import 'package:rex_zip/core/widgets/shared/app_screen_header.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';
import 'package:rex_zip/core/widgets/shared/spacing_widgets.dart';
import 'package:rex_zip/features/contact_us/presentation/company_info_widget.dart';
import 'package:rex_zip/features/contact_us/presentation/contact_form.dart';

class ContactUsScreen extends ConsumerWidget {
  const ContactUsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenBody(
      title: 'Yardım'.hardCoded,
      children: [
        const VerticalSpacingWidget(Sizes.p48),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: 'ADRES'.hardCoded,
                    style: context.textThemeExtension.bodyMedium
                        .copyWith(color: context.appColors.secondary),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: Sizes.p12),
                    child: AppDivider(),
                  ),
                  const CompanyInfoWidget(),
                ],
              ),
            ),
            const HorizontalSpacingWidget(Sizes.p48),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: 'İLETİŞİM FORMU'.hardCoded,
                    style: context.textThemeExtension.bodyMedium
                        .copyWith(color: context.appColors.secondary),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: Sizes.p12),
                    child: AppDivider(),
                  ),
                  const ContactForm()
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
