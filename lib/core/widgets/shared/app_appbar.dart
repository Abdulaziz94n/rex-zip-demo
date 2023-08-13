import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/widgets/shared/app_forward_arraow_icon.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';
import 'package:rex_zip/core/widgets/shared/spacing_widgets.dart';
import 'package:rex_zip/features/auth/application/auth_service.dart';

class AppAppbar extends ConsumerWidget implements PreferredSizeWidget {
  const AppAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      leadingWidth: context.screenWidth / 2,
      backgroundColor: context.appColors.primary,
      leading: const AppBarLeading(),
      actions: const [AppBarActionIcon()],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}

class AppBarActionIcon extends ConsumerWidget {
  const AppBarActionIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      splashRadius: 20,
      icon: const Icon(
        Icons.person,
        size: 30,
      ),
      onPressed: () {
        ref.read(authService).logout();
      },
    );
  }
}

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppForwardArrow(),
          HorizontalSpacingWidget(Sizes.p8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(text: 'KEY TEKSTILE'),
              AppText(text: '129.517.419KEY'),
            ],
          ),
        ],
      ),
    );
  }
}
