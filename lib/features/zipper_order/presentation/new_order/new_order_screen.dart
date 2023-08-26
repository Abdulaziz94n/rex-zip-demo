import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/widgets/reusables/responsive_layout.dart';
import 'package:rex_zip/features/zipper_order/presentation/new_order/new_order_screen_mobile.dart';
import 'package:rex_zip/features/zipper_order/presentation/new_order/new_order_screen_web.dart';

class NewOrderScreen extends ConsumerWidget {
  const NewOrderScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ResponsiveLayout(
      fromScreenSize: true,
      mobile: NewOrderScreenMobile(),
      desktop: NewOrderScreenWeb(),
    );
  }
}
