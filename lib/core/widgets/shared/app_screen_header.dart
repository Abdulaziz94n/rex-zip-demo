import 'package:flutter/material.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/extensions/textstyle_extension.dart';
import 'package:rex_zip/core/widgets/reusables/app_divider.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';

class ScreenBody extends StatelessWidget {
  const ScreenBody({
    super.key,
    required this.title,
    required this.children,
  });
  final String title;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
      child: Column(
        children: [
          AppText(
            text: title,
            padding: const EdgeInsets.only(top: Sizes.p24),
            style: context.textThemeExtension.bodyLarge!.bold,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: Sizes.p8),
            child: AppDivider(),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
