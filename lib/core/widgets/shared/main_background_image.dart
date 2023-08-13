import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/main.dart';

class MainBackgroundImage extends ConsumerWidget {
  const MainBackgroundImage({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage(mainBackgroundPath),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
