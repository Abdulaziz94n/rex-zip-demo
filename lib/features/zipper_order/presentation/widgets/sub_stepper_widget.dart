import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/utils/assets_manager.dart';
import 'package:rex_zip/features/zipper_order/presentation/stepper_controller.dart';
import 'package:rex_zip/features/zipper_order/presentation/widgets/sub_step_widget.dart';

class SubStepperWidget extends ConsumerWidget {
  const SubStepperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainIndex = ref.watch(stepperController).mainIndex;
    final subIndex = ref.watch(stepperController).subIndex;
    final subSteps = ref.watch(stepperController).mainSteps[mainIndex].subSteps;
    final widgets = subSteps.indexed.map((e) {
      return SubStepWidget(
        iconPath: !e.$2.isCompleted
            ? Assets.iconsStepInProgress
            : Assets.iconsStepDone,
        subIndex: subIndex,
        index: e.$1,
      );
    }).toList();

    return SizedBox(
      height: 100,
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: widgets,
          ),
        ),
      ),
    );
  }
}


/**subSteps.map((e) => SubStepWidget(
              iconPath: !subSteps[subIndex].isCompleted ? Assets.iconsStepInProgress : Assets.iconsStepDone,
              subIndex: subIndex,
              index: ,
            )).toList(); */