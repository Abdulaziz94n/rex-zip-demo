// import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';

// class GoRouterRefreshStream extends ChangeNotifier {
//   GoRouterRefreshStream(Stream<User?> stream) {
//     notifyListeners();
//     _subscription = stream.asBroadcastStream().listen(
//       (val) {
//         print('STREAM HAS BEEN LISTENED TO ${val?.email}');
//         notifyListeners();
//       },
//     );
//   }

//   late final StreamSubscription<dynamic> _subscription;

//   @override
//   void dispose() {
//     _subscription.cancel();
//     super.dispose();
//   }
// }
