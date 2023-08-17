import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/features/zipper_orders/presentation/stepper_controller.dart';

class SubStepWidget extends ConsumerWidget {
  const SubStepWidget({
    super.key,
    required this.iconPath,
    required this.subIndex,
    required this.index,
  });

  final String iconPath;
  final int subIndex;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subIndex = ref.watch(stepperController).subIndex;
    return InkWell(
      onTap: subIndex < index + 1
          ? null
          : () => ref.read(stepperController.notifier).goToSubStep(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SvgPicture.asset(
          iconPath,
          width: 100,
          height: 75,
          color: subIndex >= index ? Colors.red : Colors.black,
        ),
      ),
    );
  }
}
