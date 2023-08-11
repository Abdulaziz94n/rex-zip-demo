import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/widgets/shared/app_error_screen.dart';
import 'package:rex_zip/features/auth/presentation/login_screen.dart';

enum AppRoutes {
  home,
}

final goRouter = GoRouter(
  debugLogDiagnostics: false,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home.name,
      builder: (context, state) => const LoginScreen(),
    ),
  ],
  errorBuilder: (context, state) => const AppErrorScreen(),
);

final goRouterProvider = Provider<GoRouter>((ref) {
  return goRouter;
});
