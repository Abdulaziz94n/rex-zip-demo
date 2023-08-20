import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/features/home/domain/drawer_tabs_enum.dart';
import 'package:rex_zip/features/zipper_order/presentation/stepper_controller.dart';

class MainStepWidget extends ConsumerWidget {
  const MainStepWidget({
    super.key,
    required this.iconPath,
    required this.mainIndex,
    required this.index,
  });

  final String iconPath;
  final int mainIndex;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOrderTab = ref.watch(appTab) == AppTabs.newOrder;
    final iconColor = mainIndex >= index ? Colors.red : Colors.white;
    final disColor = Colors.grey.shade800;
    final color = !isOrderTab ? disColor : iconColor;

    return InkWell(
      onTap: !isOrderTab || mainIndex < index + 1
          ? null
          : () => ref.read(stepperController.notifier).goToMainStep(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SvgPicture.asset(
          iconPath,
          width: 100,
          height: 75,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        ),
      ),
    );
  }
}
