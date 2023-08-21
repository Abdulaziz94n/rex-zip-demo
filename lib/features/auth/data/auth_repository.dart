import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/constants/api_keys.dart';
import 'package:rex_zip/api/constants/api_urls.dart';
import 'package:rex_zip/core/exceptions/app_exceptions.dart';
import 'package:rex_zip/core/extensions/string_extension.dart';
import 'package:rex_zip/features/auth/domain/abstract_appuser.dart';
import 'package:rex_zip/features/auth/domain/client_appuser.dart';
import 'package:rex_zip/features/auth/domain/representative_appuser.dart';

class AuthRepository {
  AuthRepository(this._dio);
  final Dio _dio;

  Future<AppUser> login(String userName, String password) async {
    try {
      final response = await _dio.post(
        ApiUrls.userLogin,
        data: {ApiKeys.userName: userName, ApiKeys.password: password},
      );
      final data = response.data;
      print(data[ApiKeys.token]);
      if (response.data[ApiKeys.userType] == AppUserType.client.type) {
        return ClientAppUser(
          info: ClientInfo.fromMap(data[ApiKeys.clientData]),
          token: data[ApiKeys.token],
        );
      } else {
        return RepresentativeAppUser(
          info: data[ApiKeys.respresentativeData],
          token: data[ApiKeys.token],
        );
      }
    } catch (e) {
      throw CustomException(message: '$e Giriş bilgileri hatalı'.hardCoded);
    }
  }

  Future<void> changeUserEmailPassword({
    required String email,
    required String newPassowrd,
  }) async {
    // TODO: Implement API Call
  }

  Future<void> logout() async {
    // Implemented in the authService
    throw UnimplementedError();
  }
}

final authRepo = Provider((ref) => AuthRepository(ref.watch(dioProvider)));
