import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/widgets/reusables/app_divider.dart';
import 'package:rex_zip/core/widgets/shared/app_drawer.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';
import 'package:rex_zip/core/widgets/shared/spacing_widgets.dart';
import 'package:rex_zip/features/home/domain/drawer_tabs_enum.dart';

class AppSideBar extends ConsumerWidget {
  const AppSideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SidebarConfigs(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              AppText(
                text: 'MÜŞTERİ KONTROL PANELİ',
                padding: EdgeInsets.only(top: Sizes.p12),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: Sizes.p12),
                child: AppDivider(),
              ),
              SidebarItems(),
            ],
          ),
          SidebarActions(),
        ],
      ),
    );
  }
}

class SidebarConfigs extends StatelessWidget {
  const SidebarConfigs({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.defaultSidebarWidth,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: Sizes.sidebarMinHeight,
              ),
              child: SizedBox(
                  height: context.isDesktop
                      ? context.screenHeight -
                          kToolbarHeight -
                          Sizes.webAppbarDivider
                      : context.screenHeight,
                  child: ColoredBox(
                    color: context.appColors.darkBlue,
                    child: DefaultTextStyle(
                      style: context.textThemeExtension.bodyMedium,
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Sizes.p12,
                            vertical: Sizes.p12,
                          ),
                          child: child,
                        ),
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class SidebarItems extends StatelessWidget {
  const SidebarItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DrawerItem(tab: AppTabs.newOrder),
        DrawerItem(tab: AppTabs.openOrders),
        DrawerItem(tab: AppTabs.closedOrders, trailing: '650'),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: AppDivider(),
        ),
        DrawerItem(tab: AppTabs.userSettings),
        DrawerItem(tab: AppTabs.contactUs),
      ],
    );
  }
}

class SidebarActions extends StatelessWidget {
  const SidebarActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: Sizes.defaultCircleRadius,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: AppDivider(),
            ),
            Icon(Icons.logout),
            VerticalSpacingWidget(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.present_to_all),
                HorizontalSpacingWidget(Sizes.p4),
                AppText(text: 'CANLI DESTEK'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
