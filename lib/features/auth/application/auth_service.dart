import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/features/auth/data/auth_repository.dart';
import 'package:rex_zip/features/auth/domain/abstract_appuser.dart';

class AuthService {
  AuthService(this.ref);
  final Ref ref;

  late AppUser? currentUser;

  Future<void> login(String userName, String password) async {
    final user = await ref.read(authRepo).login(userName, password);
    currentUser = user;
    ref.read(userProvider.notifier).state = AsyncData(user);
  }

  Future<void> logout() async {
    currentUser = null;
    ref.read(userProvider.notifier).state = null;
  }
}

final authService = Provider((ref) => AuthService(ref));

final userProvider = StateProvider<AsyncValue<AppUser?>?>((ref) {
  return null;
});
