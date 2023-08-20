import 'package:flutter/material.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/constants/strings.dart';
import 'package:rex_zip/core/extensions/textstyle_extension.dart';
import 'package:rex_zip/core/widgets/shared/app_forward_arraow_icon.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';
import 'package:rex_zip/core/widgets/shared/spacing_widgets.dart';

class CompanyInfoWidget extends StatelessWidget {
  const CompanyInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CompanyInfoLine(text: Strings.companyAddress),
        VerticalSpacingWidget(Sizes.p4),
        CompanyInfoLine(text: Strings.phone1),
        VerticalSpacingWidget(Sizes.p4),
        CompanyInfoLine(text: Strings.phone2),
        VerticalSpacingWidget(Sizes.p4),
        CompanyInfoLine(text: Strings.infoEmail),
        VerticalSpacingWidget(Sizes.p4),
        CompanyInfoLine(text: Strings.accEmail),
        VerticalSpacingWidget(Sizes.p4),
        CompanyInfoLine(text: Strings.planningEmail),
      ],
    );
  }
}

class CompanyInfoLine extends StatelessWidget {
  const CompanyInfoLine({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        const AppForwardArrow(
          size: 12,
        ),
        const HorizontalSpacingWidget(Sizes.p4),
        Expanded(
          child: AppText(
            text: text,
            style: const TextStyle().bold,
          ),
        ),
      ],
    );
  }
}
