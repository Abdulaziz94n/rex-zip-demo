abstract class AppUser {
  const AppUser({required this.userType});
  final AppUserType userType;

  bool get isClient => userType == AppUserType.client;
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
