import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/extensions/textstyle_extension.dart';
import 'package:rex_zip/core/widgets/reusables/app_divider.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';
import 'package:rex_zip/features/zipper_order/presentation/stepper_controller.dart';
import 'package:rex_zip/features/zipper_order/presentation/widgets/step_items.dart';
import 'package:rex_zip/features/zipper_order/presentation/widgets/sub_stepper_widget.dart';

class NewOrderScreenWeb extends ConsumerWidget {
  const NewOrderScreenWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stepper = ref.watch(stepperController);
    final stepperNotifier = ref.watch(stepperController.notifier);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
      child: Column(
        children: [
          AppText(
            text: 'Yeni Sipariş - ${stepperNotifier.currentStep().title}',
            padding: const EdgeInsets.only(top: Sizes.p24),
            style: context.textThemeExtension.bodyLarge!.bold,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: AppDivider(),
          ),
          Expanded(
            child: StepItems(
              subStep: stepperNotifier.currentSubStep().subStep,
            ),
          ),
          // Expanded(
          //   child: AppGridView(
          //     itemCount: DummyData.mapData.length,
          //     itemBuilder: (context, index) {
          //       return AppGridItem(
          //         name: DummyData.mapData[index]['name'],
          //         photoUrl: DummyData.mapData[index]['photoUrl'],
          //       );
          //     },
          //   ),
          // ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: AppDivider(),
          ),
          const SubStepperWidget()
        ],
      ),
    );
  }
}
