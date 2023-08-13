import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/widgets/reusables/app_scaffold.dart';
import 'package:rex_zip/core/widgets/shared/main_background_image.dart';

class OrderSelectionScreenMobile extends ConsumerWidget {
  const OrderSelectionScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MainBackgroundImage(
      child: AppScaffold(
        body: Center(
          child: Text('OrderSelectionScreenMobile'),
        ),
      ),
    );
  }
}
