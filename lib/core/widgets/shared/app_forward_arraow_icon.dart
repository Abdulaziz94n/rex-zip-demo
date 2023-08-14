import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/widgets/reusables/app_scaffold.dart';

class AppForwardArrow extends ConsumerWidget {
  const AppForwardArrow({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => ref.read(appScaffoldKey).currentState!.openDrawer(),
      child: Icon(
        Icons.arrow_forward_ios_outlined,
        size: 16,
        color: color ?? context.appColors.secondary,
      ),
    );
  }
}
