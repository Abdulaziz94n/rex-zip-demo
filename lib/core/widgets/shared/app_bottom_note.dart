import 'package:flutter/material.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';

class BottomNote extends StatelessWidget {
  const BottomNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.p32,
      width: double.infinity,
      child: ColoredBox(
        color: context.appColors.secondary,
        child: Center(
          child: AppText(
            text: '*DOLAR KURU NEDENİ İLE FERMUAR\'A %100 ZAM YAPILMISTIR',
            style: context.textThemeExtension.bodyLarge!.copyWith(
              color: context.appColors.onSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
