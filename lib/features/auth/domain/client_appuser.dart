import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:rex_zip/api/constants/api_keys.dart';
import 'package:rex_zip/features/auth/domain/abstract_appuser.dart';

class ClientAppUser extends AppUser with EquatableMixin {
  final ClientInfo info;
  final String token;
  const ClientAppUser({
    required this.info,
    required this.token,
    super.userType = AppUserType.client,
  });

  @override
  List<Object> get props => [userType, info, token];

  factory ClientAppUser.fromMap(Map<String, dynamic> map) {
    return ClientAppUser(
      info: ClientInfo.fromMap(map['cari_bilgi']),
      token: map['token'] ?? '',
    );
  }

  factory ClientAppUser.fromJson(String source) =>
      ClientAppUser.fromMap(json.decode(source));
}

class ClientInfo extends Equatable {
  final String email;
  final String description;
  final String code;
  const ClientInfo({
    required this.email,
    required this.description,
    required this.code,
  });

  @override
  List<Object?> get props => [email, description, code];

  factory ClientInfo.fromMap(Map<String, dynamic> map) {
    return ClientInfo(
      email: map[ApiKeys.email] ?? '',
      description: map[ApiKeys.clientDesc] ?? '',
      code: map[ApiKeys.clientCode] ?? '',
    );
  }

  factory ClientInfo.fromJson(String source) =>
      ClientInfo.fromMap(json.decode(source));
}
