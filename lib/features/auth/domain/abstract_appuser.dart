import 'package:rex_zip/features/auth/domain/client_appuser.dart';
import 'package:rex_zip/features/auth/domain/representative_appuser.dart';

abstract class AppUser {
  const AppUser({required this.userType});
  final AppUserType userType;

  bool get isClient => userType == AppUserType.client;

  String get getToken => isClient
      ? (this as ClientAppUser).token
      : (this as RepresentativeAppUser).token;
  String get getClientCode => isClient
      ? (this as ClientAppUser).info.code
      : (this as RepresentativeAppUser).representedClient ?? '';
}

enum AppUserType {
  representative('musteri_temsilcisi'),
  client('cari');

  const AppUserType(this.type);
  final String type;

  static AppUserType fromString(String val) {
    return switch (val) {
      'representative' => AppUserType.representative,
      'client' => AppUserType.client,
      _ => throw UnimplementedError()
    };
  }
}
