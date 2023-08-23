import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/widgets/shared/app_error_screen.dart';
import 'package:rex_zip/features/auth/application/auth_service.dart';
import 'package:rex_zip/features/auth/presentation/login_screen/login_screen.dart';
import 'package:rex_zip/features/home/presentation/home_screen.dart';
import 'package:rex_zip/features/order_type/presentation/order_selection_screen.dart';

enum AppRoutes {
  home,
  login,
  orderType,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    debugLogDiagnostics: false,
    initialLocation: '/home',
    redirect: (context, state) {
      final isLogged = ref.watch(userProvider)?.value;
      if (isLogged == null) {
        return '/login';
      } else {
        return '/home';
      }
    },
    routes: [
      GoRoute(
        path: '/login',
        name: AppRoutes.login.name,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/orderType',
        name: AppRoutes.orderType.name,
        builder: (context, state) => const OrderSelectionScreen(),
      ),
      GoRoute(
        path: '/home',
        name: AppRoutes.home.name,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
    errorBuilder: (context, state) => const AppErrorScreen(),
  );
});
