import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/widgets/reusables/app_scaffold.dart';
import 'package:rex_zip/core/widgets/shared/app_forward_arraow_icon.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';
import 'package:rex_zip/core/widgets/shared/side_bar.dart';
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
      child: const AppSideBar(),
    );
  }
}

class DrawerItem extends ConsumerWidget {
  const DrawerItem({
    super.key,
    required this.tab,
    this.trailing,
  });
  final AppTabs tab;
  final String? trailing;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.p4),
      child: Container(
        decoration: BoxDecoration(
          color: ref.watch(drawerTab) == tab ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(Sizes.defaultBorderRadius),
        ),
        child: InkWell(
          onTap: () {
            ref.read(drawerTab.notifier).state = tab;
            ref.read(appScaffoldKey).currentState?.closeDrawer();
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
