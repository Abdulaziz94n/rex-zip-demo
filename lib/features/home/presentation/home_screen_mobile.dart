import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/widgets/reusables/app_scaffold.dart';
import 'package:rex_zip/core/widgets/shared/app_appbar.dart';
import 'package:rex_zip/features/contact_us/presentation/contact_us_screen.dart';
import 'package:rex_zip/features/home/domain/drawer_tabs_enum.dart';
import 'package:rex_zip/features/orders/presentation/closed_orders_screen.dart';
import 'package:rex_zip/features/orders/presentation/new_order_screen.dart';
import 'package:rex_zip/features/orders/presentation/opened_orders_screen.dart';
import 'package:rex_zip/features/user_settings/presentation/settings_screen.dart';

class HomeScreenMobile extends ConsumerWidget {
  const HomeScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
        appBar: const AppAppbar(),
        body: switch (ref.watch(drawerTab)) {
          DrawerTabs.newOrder => const NewOrderScreen(),
          DrawerTabs.closedOrders => const ClosedOrdersScreen(),
          DrawerTabs.openOrders => const OpenedOrdersScreen(),
          DrawerTabs.contactUs => const ContactUsScreen(),
          DrawerTabs.userSettings => const SettingsScreen(),
        });
  }
}
