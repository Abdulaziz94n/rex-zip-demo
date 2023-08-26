// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/responses/zipper_data/zipper_data.dart';
import 'package:rex_zip/api/responses/zipper_data/zipper_data_extension.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/widgets/shared/app_grid_item.dart';
import 'package:rex_zip/core/widgets/shared/app_grid_view.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';
import 'package:rex_zip/core/widgets/shared/async_value_widget.dart';
import 'package:rex_zip/features/zipper_order/data/zipper_new_order_repository.dart';
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
    print(ref.watch(stepItemsFuture(subStep)));
    return AsyncValueWidget(
      value: ref.watch(stepItemsFuture(subStep)),
      data: (data) {
        print(data);
        print(data.runtimeType);
        return data.isEmpty
            ? Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText(
                      text: 'Uygun Secenek Bulunamadi',
                      style: context.textThemeExtension.bodyLarge?.copyWith(
                        color: context.appColors.onBackground,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          ref.read(stepperController.notifier).next(),
                      child: const AppText(text: 'Ilerle'),
                    )
                  ],
                ),
              )
            : AppGridView(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final item = data[index];
                  return AppGridItem(
                    text: item.val,
                    photoUrl: item.photoUrl,
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
