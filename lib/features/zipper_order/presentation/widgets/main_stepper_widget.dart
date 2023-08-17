import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/features/zipper_order/presentation/stepper_controller.dart';
import 'package:rex_zip/features/zipper_order/presentation/widgets/main_step_widget.dart';

class MainStepperWidget extends ConsumerWidget {
  const MainStepperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStepper = ref.watch(stepperController);
    final mainSteps = appStepper.mainSteps;
    final mainIndex = appStepper.mainIndex;
    final widgets = mainSteps.indexed.map((e) {
      return MainStepWidget(
        iconPath: e.$2.iconPath,
        mainIndex: mainIndex,
        index: e.$1,
      );
    }).toList();

    return SizedBox(
      height: 100,
      child: ColoredBox(
        color: context.appColors.primary,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: widgets,
            ),
          ),
        ),
      ),
    );
  }
}
