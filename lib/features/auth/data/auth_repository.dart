import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/api_const.dart';
import 'package:rex_zip/core/exceptions/app_exceptions.dart';
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
        data: {'sifre': password, 'kullanici_adi': userName},
      );
      final data = response.data;
      print(data['token']);
      if (response.data['kullanici_tipi'] == AppUserType.client.type) {
        return ClientAppUser(
            info: ClientInfo.fromMap(data['cari_bilgi']), token: data['token']);
      } else {
        return RepresentativeAppUser(
          info: data['musteri_temsilcisi_bilgi'],
          token: data['token'],
        );
      }
    } catch (e) {
      throw CustomException(message: '$e Giriş bilgileri hatalı');
    }
  }

  Future<void> logout() async {
    // Implemented in the authService
    throw UnimplementedError();
  }
}

final authRepo = Provider((ref) => AuthRepository(ref.watch(dioProvider)));
