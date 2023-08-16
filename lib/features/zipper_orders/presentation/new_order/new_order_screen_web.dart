import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/dummy_data.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/widgets/reusables/app_divider.dart';
import 'package:rex_zip/core/widgets/shared/app_grid_item.dart';
import 'package:rex_zip/core/widgets/shared/app_grid_view.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';
import 'package:rex_zip/features/zipper_orders/presentation/widgets/sub_stepper_widget.dart';

class NewOrderScreenWeb extends ConsumerWidget {
  const NewOrderScreenWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
      child: Column(
        children: [
          const AppText(
            text: 'Title Goes Here',
            padding: EdgeInsets.only(top: Sizes.p24),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: AppDivider(),
          ),
          Expanded(
            child: AppGridView(
              itemCount: DummyData.mapData.length,
              itemBuilder: (context, index) {
                return AppGridItem(
                  name: DummyData.mapData[index]['name'],
                  photoUrl: DummyData.mapData[index]['photoUrl'],
                );
              },
            ),
          ),
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
