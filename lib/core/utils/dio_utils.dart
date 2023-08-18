import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rex_zip/api/responses/zipper_data.dart';

class DioUtils {
  static Response<ZipperData> handleResponseException(DioException e) {
    final Response<ZipperData> res = (e.error is SocketException)
        ? Response(
            requestOptions: RequestOptions(),
            statusCode: 9,
            statusMessage: 'Ağ bağlantı hatası',
          )
        : switch (e.type) {
            DioExceptionType.receiveTimeout => Response(
                requestOptions: RequestOptions(),
                statusCode: 1,
                statusMessage: 'İstek süresi bitti',
              ),
            DioExceptionType.connectionError => Response(
                requestOptions: RequestOptions(),
                statusCode: 2,
                statusMessage: 'bağlantı hatası',
              ),
            DioExceptionType.cancel => Response(
                requestOptions: RequestOptions(),
                statusCode: 3,
                statusMessage: 'İstek iptal edildi',
              ),
            DioExceptionType.unknown => Response(
                requestOptions: RequestOptions(),
                statusCode: 4,
                statusMessage: 'hata oluştu tekrar deneyin',
              ),
            DioExceptionType.badResponse => Response(
                requestOptions: RequestOptions(),
                statusCode: 5,
                statusMessage: 'veri bulunamadı',
              ),
            DioExceptionType.sendTimeout => Response(
                requestOptions: RequestOptions(),
                statusCode: 6,
                statusMessage: 'İstek süresi bitti',
              ),
            DioExceptionType.badCertificate => Response(
                requestOptions: RequestOptions(),
                statusCode: 7,
                statusMessage: 'geçersiz istek',
              ),
            DioExceptionType.connectionTimeout => Response(
                requestOptions: RequestOptions(),
                statusCode: 8,
                statusMessage: 'Bağlantı zamanaşımına uğradı',
              ),
          };
    print(res.statusCode);
    print(res.statusMessage);
    print(res.data.runtimeType);
    return res;
  }
}
