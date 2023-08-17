import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
    return InkWell(
      onTap: mainIndex < index + 1
          ? null
          : () => ref.read(stepperController.notifier).goToMainStep(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SvgPicture.asset(
          iconPath,
          width: 100,
          height: 75,
          color: mainIndex >= index ? Colors.red : Colors.white,
        ),
      ),
    );
  }
}
