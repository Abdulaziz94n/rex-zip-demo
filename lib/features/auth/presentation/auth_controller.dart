import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/features/auth/application/auth_service.dart';
import 'package:rex_zip/features/auth/data/auth_repository.dart';

class AuthController extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  Future login(String userName, String password) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(authService).login(userName, password),
    );
  }

  Future<void> changeUserEmailPassword({
    required String email,
    required String newPassowrd,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(authRepo).changeUserEmailPassword(
            email: email,
            newPassowrd: newPassowrd,
          ),
    );
  }

  Future logout() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(authService).logout(),
    );
  }
}

final authController =
    AsyncNotifierProvider<AuthController, void>(AuthController.new);
