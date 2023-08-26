import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/widgets/reusables/app_scaffold.dart';
import 'package:rex_zip/core/widgets/shared/app_appbar.dart';
import 'package:rex_zip/features/contact_us/presentation/contact_us_screen.dart';
import 'package:rex_zip/features/home/domain/drawer_tabs_enum.dart';
import 'package:rex_zip/features/home/presentation/home_template.dart';
import 'package:rex_zip/features/user_settings/presentation/settings_screen.dart';
import 'package:rex_zip/features/zipper_order/presentation/closed_orders_screen.dart';
import 'package:rex_zip/features/zipper_order/presentation/new_order/new_order_screen.dart';
import 'package:rex_zip/features/zipper_order/presentation/open_orders_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
        appBar: const AppAppbar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {},
        ),
        body: HomeTemplate(
          body: switch (ref.watch(appTab)) {
            AppTabs.newOrder => const NewOrderScreen(),
            AppTabs.closedOrders => const ClosedOrdersScreen(),
            AppTabs.openOrders => const OpenedOrdersScreen(),
            AppTabs.contactUs => const ContactUsScreen(),
            AppTabs.userSettings => const SettingsScreen(),
          },
        ));
  }
}
