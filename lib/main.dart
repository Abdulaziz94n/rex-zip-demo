import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/router/app_router.dart';
import 'package:rex_zip/core/theme/themes.dart';

/// showcase of implmentations:
/// ThemeExtensions
/// work customApi
///
///

// TODO: Check Home Feature for edit and improve clean code

const mainBackgroundPath = 'assets/images/background1.jpg';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(goRouterProvider),
      debugShowCheckedModeBanner: false,
      title: 'Rex-ZIP',
      theme: AppThemes().lightTheme,
    );
  }
}
