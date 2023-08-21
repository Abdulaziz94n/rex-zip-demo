// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/responses/zipper_data.dart';
import 'package:rex_zip/core/widgets/shared/app_grid_item.dart';
import 'package:rex_zip/core/widgets/shared/app_grid_view.dart';
import 'package:rex_zip/core/widgets/shared/async_value_widget.dart';
import 'package:rex_zip/features/zipper_order/data/zipper_order_repository.dart';
import 'package:rex_zip/features/zipper_order/domain/sub_steps_enum.dart';
import 'package:rex_zip/features/zipper_order/presentation/new_order/new_order_controller.dart';
import 'package:rex_zip/features/zipper_order/presentation/stepper_controller.dart';

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
      data: (data) {
        return AppGridView(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return AppGridItem(
              text: ZipperData.valFromType(item),
              photoUrl: ZipperData.valFromType(item),
              onSelect: () {
                ref.read(stepperController.notifier).next();
                ref
                    .read(zipperOrderController.notifier)
                    .updateOrder(item); // TODO: Add Val
              },
            );
          },
        );
      },
    );
  }
}
