import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/widgets/shared/app_bottom_note.dart';
import 'package:rex_zip/core/widgets/shared/side_bar.dart';
import 'package:rex_zip/features/orders/presentation/widgets/stepper_form.dart';

class HomeTemplate extends ConsumerWidget {
  const HomeTemplate({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox.fromSize(
          size: const Size.fromHeight(Sizes.webAppbarDivider),
          child: ColoredBox(
            color: context.appColors.secondary,
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (context.isDesktop) const AppSideBar(),
              Expanded(
                child: ColoredBox(
                  color: context.appColors.background,
                  child: Column(
                    children: [
                      Expanded(child: body),
                      const AppStepper(),
                      const BottomNote(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}