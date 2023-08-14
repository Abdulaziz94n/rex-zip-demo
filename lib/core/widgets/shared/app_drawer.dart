import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/widgets/reusables/app_divider.dart';
import 'package:rex_zip/core/widgets/shared/app_forward_arraow_icon.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';
import 'package:rex_zip/core/widgets/shared/spacing_widgets.dart';
import 'package:rex_zip/features/home/domain/drawer_tabs_enum.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
        backgroundColor: context.appColors.darkBlue,
        width: Sizes.defaultdrawerWidth,
        child: DefaultTextStyle(
          style: context.textThemeExtension.bodyMedium,
          child: const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Sizes.p12,
                vertical: Sizes.p12,
              ),
              child: Column(
                children: [
                  AppText(
                    text: 'MÜŞTERİ KONTROL PANELİ',
                    padding: EdgeInsets.symmetric(vertical: Sizes.p12),
                  ),
                  AppDivider(),
                  DrawerItem(tab: DrawerTabs.newOrder),
                  DrawerItem(tab: DrawerTabs.openOrders),
                  DrawerItem(tab: DrawerTabs.closedOrders, trailing: '650'),
                  AppDivider(),
                  DrawerItem(tab: DrawerTabs.userSettings),
                  DrawerItem(tab: DrawerTabs.contactUs),
                ],
              ),
            ),
          ),
        ));
  }
}

class DrawerItem extends ConsumerWidget {
  const DrawerItem({
    super.key,
    required this.tab,
    this.trailing,
  });
  final DrawerTabs tab;
  final String? trailing;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.p12),
      child: Container(
        color: ref.watch(drawerTab) == tab ? Colors.red : Colors.transparent,
        child: InkWell(
          onTap: () {
            ref.read(drawerTab.notifier).state = tab;
            context.pop();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.p8,
              vertical: Sizes.p12,
            ),
            child: Row(
              children: [
                AppForwardArrow(color: context.appColors.onPrimary),
                const HorizontalSpacingWidget(Sizes.p4),
                AppText(text: tab.text),
                const Spacer(),
                AppText(text: trailing ?? '')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
