import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/widgets/reusables/app_divider.dart';
import 'package:rex_zip/core/widgets/shared/app_screen_body.dart';
import 'package:rex_zip/features/zipper_order/presentation/stepper_controller.dart';
import 'package:rex_zip/features/zipper_order/presentation/widgets/step_items.dart';
import 'package:rex_zip/features/zipper_order/presentation/widgets/sub_stepper_widget.dart';

class NewOrderScreenWeb extends ConsumerWidget {
  const NewOrderScreenWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stepperNotifier = ref.watch(stepperController.notifier);
    return ScreenBody(
      title: 'Yeni Sipariş - ${stepperNotifier.currentStep().title}',
      isScrollable: false,
      children: [
        Expanded(
          child: StepItems(
            subStep: stepperNotifier.currentSubStep().subStep,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: AppDivider(),
        ),
        const SubStepperWidget()
      ],
    );
  }
}
