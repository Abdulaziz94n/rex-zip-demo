import 'package:flutter/material.dart';

class AppGridView<T> extends StatelessWidget {
  const AppGridView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.aspectRatio,
    this.crossAxisCount,
  });
  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;
  final double? aspectRatio;
  final int? crossAxisCount;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount ?? 4,
        childAspectRatio: aspectRatio ?? 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
