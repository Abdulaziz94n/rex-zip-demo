import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:rex_zip/features/auth/domain/abstract_appuser.dart';

class RepresentativeAppUser extends AppUser with EquatableMixin {
  final Map<String, dynamic> info;
  final String token;
  const RepresentativeAppUser(
      {required this.info,
      required this.token,
      super.userType = AppUserType.representative});

  String get name => info['ad'];
  String get email => info['mail'];
  String get lastName => info['soyad'];
  String get department => info['bolum'];

  @override
  List<Object> get props => [userType, info, token];

  factory RepresentativeAppUser.fromMap(Map<String, dynamic> map) {
    return RepresentativeAppUser(
      info: Map<String, dynamic>.from(map['musteri_temsilcisi_bilgi']),
      token: map['token'] ?? '',
    );
  }

  factory RepresentativeAppUser.fromJson(String source) =>
      RepresentativeAppUser.fromMap(json.decode(source));
}
