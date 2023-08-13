import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/features/auth/data/auth_repository.dart';
import 'package:rex_zip/main.dart';

class AuthService {
  AuthService(this.ref);
  final Ref ref;

  Future<void> login(String userName, String password) async {
    final user = await ref.read(authRepo).login(userName, password);
    ref.read(userProvider.notifier).state = AsyncData(user);
  }

  Future<void> logout() async {
    ref.read(userProvider.notifier).state = null;
  }
}

final authService = Provider((ref) => AuthService(ref));
