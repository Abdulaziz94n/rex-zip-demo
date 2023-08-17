import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/widgets/shared/async_value_widget.dart';
import 'package:rex_zip/features/zipper_order/data/zipper_order_repository.dart';
import 'package:rex_zip/features/zipper_order/domain/sub_steps_enum.dart';

class StepItems extends ConsumerWidget {
  const StepItems({
    super.key,
    required this.subStep,
  });
  final SubSteps subStep;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncValueWidget(
      value: ref.watch(stepItemsFuture(subStep)),
      data: (data) => Center(
        child: Text('DATA = $data'),
      ),
    );
  }
}
