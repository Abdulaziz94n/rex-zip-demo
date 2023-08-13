import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/widgets/reusables/app_scaffold.dart';
import 'package:rex_zip/core/widgets/reusables/responsive_layout.dart';
import 'package:rex_zip/core/widgets/shared/main_background_image.dart';
import 'package:rex_zip/features/order_type/presentation/order_selection_mobile.dart';
import 'package:rex_zip/features/order_type/presentation/order_selection_web.dart';

class OrderSelectionScreen extends ConsumerWidget {
  const OrderSelectionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MainBackgroundImage(
      child: AppScaffold(
          body: ResponsiveLayout(
        mobile: OrderSelectionScreenMobile(),
        desktop: OrderSelectionScreenWeb(),
      )),
    );
  }
}
