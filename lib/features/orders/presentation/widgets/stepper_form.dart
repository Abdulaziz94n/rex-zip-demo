import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/utils/assets_manager.dart';

class AppStepper extends ConsumerWidget {
  const AppStepper({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: Sizes.p100,
      width: double.maxFinite,
      child: ColoredBox(
        color: context.appColors.primary,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Assets.allIcons.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SvgPicture.asset(
                Assets.allIcons[index],
                width: 100,
                height: 75,
                color: Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
}
