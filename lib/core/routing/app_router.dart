// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../widgets/app_error_screen.dart';

// enum AppRoutes {
//   home,
//   login,
// }

// final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
// final goRouterProvider = Provider<GoRouter>((ref) {
//   final authRepository = ref.watch(authRepoProvider);
//   // final isAdmin = ref.watch(isAdminProvider).value ?? false;

//   return GoRouter(
//     navigatorKey: _rootNavigatorKey,
//     debugLogDiagnostics: false,
//     initialLocation: '/',
//     redirect: (_, state) {
//       final user = authRepository.currentUser;
//       final isLoggedIn = user != null;
//       if (isLoggedIn) {
//         if (state.location == '/') {
//           return '/home';
//         }
//       } else {
//         return '/';
//       }
//       return null;
//     },
//     // refreshListenable: GoRouterRefreshStream(
//     //   authRepository.idTokenChanges(),
//     // ),
//     routes: [],
//     errorBuilder: (context, state) => const AppErrorScreen(),
//   );
// });
