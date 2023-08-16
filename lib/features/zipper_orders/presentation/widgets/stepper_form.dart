import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/features/zipper_orders/presentation/stepper_controller.dart';

class MainStepperWidget extends ConsumerWidget {
  const MainStepperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStepper = ref.watch(stepperController);
    final mainSteps = appStepper.mainSteps;
    final mainIndex = appStepper.mainIndex;
    return SizedBox(
      height: Sizes.p100,
      width: double.maxFinite,
      child: ColoredBox(
        color: context.appColors.primary,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mainSteps.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SvgPicture.asset(
                mainSteps[index].iconPath,
                width: 100,
                height: 75,
                color: mainIndex >= index ? Colors.red : Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
}
