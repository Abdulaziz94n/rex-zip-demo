import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/widgets/reusables/responsive_layout.dart';
import 'package:rex_zip/features/home/presentation/home_screen_mobile.dart';
import 'package:rex_zip/features/home/presentation/home_screen_web.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ResponsiveLayout(
      mobile: HomeScreenMobile(),
      desktop: HomeScreenWeb(),
    );
  }
}
