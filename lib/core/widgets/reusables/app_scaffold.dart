import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      backgroundColor: backgroundColor,
      body: appBar != null ? body : SafeArea(child: body),
      floatingActionButton: floatingActionButton,
    );
  }
}
