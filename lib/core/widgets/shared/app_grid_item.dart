import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/widgets/reusables/app_bordered_box.dart';
import 'package:rex_zip/core/widgets/shared/app_forward_arraow_icon.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';
import 'package:rex_zip/core/widgets/shared/spacing_widgets.dart';
import 'package:rex_zip/features/zipper_order/presentation/stepper_controller.dart';

class AppGridItem extends ConsumerWidget {
  const AppGridItem({
    super.key,
    required this.text,
    required this.photoUrl,
  });
  final String text;
  final String photoUrl;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(Sizes.defaultBorderRadius),
      ),
      child: AppBorderedBox.withChild(
        borderColor: context.appColors.primary,
        borderRadius: Sizes.defaultBorderRadius,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(width: double.maxFinite, child: Text(photoUrl)),
              ),
            ),
            Expanded(
              child: ColoredBox(
                color: context.appColors.darkBlue,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            const HorizontalSpacingWidget(Sizes.p24),
                            const AppForwardArrow(),
                            const HorizontalSpacingWidget(Sizes.p4),
                            AppText(
                              text: text,
                              style: context.textThemeExtension.bodyMedium
                                  .copyWith(
                                color: context.appColors.onPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: double.infinity,
                        width: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: context.appColors.secondary,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight:
                                    Radius.circular(Sizes.defaultBorderRadius),
                              ),
                            ),
                          ),
                          onPressed: () {
                            ref.read(stepperController.notifier).next();
                          },
                          child: const AppText(
                            text: 'SEÇ',
                          ),
                        ),
                      ),
                      const HorizontalSpacingWidget(1),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
