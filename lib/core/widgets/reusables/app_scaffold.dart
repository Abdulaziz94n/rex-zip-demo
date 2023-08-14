import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/widgets/shared/app_drawer.dart';

class AppScaffold extends ConsumerWidget {
  const AppScaffold({
    super.key,
    required this.body,
    this.floatingActionButton,
    this.backgroundColor,
    this.appBar,
    this.drawer,
  });
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final Drawer? drawer;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: ref.watch(appScaffoldKey),
      appBar: appBar,
      drawer: context.isMobile ? const AppDrawer() : null,
      backgroundColor: backgroundColor,
      body: appBar != null ? body : SafeArea(child: body),
      floatingActionButton: floatingActionButton,
    );
  }
}

final appScaffoldKey = Provider<GlobalKey<ScaffoldState>>((ref) {
  return GlobalKey<ScaffoldState>();
});
