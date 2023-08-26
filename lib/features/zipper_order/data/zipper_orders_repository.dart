import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/constants/api_urls.dart';
import 'package:rex_zip/api/requests/orders_requests.dart';
import 'package:rex_zip/api/responses/orders/zipper_order_response.dart';
import 'package:rex_zip/core/exceptions/app_exceptions.dart';
import 'package:rex_zip/core/utils/dio_utils.dart';
import 'package:rex_zip/features/zipper_order/domain/zipper_order_status.dart';

class ZipperOrdersRepository {
  ZipperOrdersRepository(this._dio);
  final Dio _dio;

  Future<List<ZipperOrderResponse>> fetchOpenOrders({
    required String token,
    required String clientCode,
    required int orderNo,
  }) async {
    try {
      final response = await _dio.post(ApiUrls.orderDetails,
          data: OrderApiReqeusts.fetchZipperOrderParams(
            token: token,
            clientCode: clientCode,
            status: ZipperOrderStatus.open,
            orderNo: orderNo,
          ));
      final jsonList = (response.data['data'] as List<dynamic>);
      final openOrders =
          jsonList.map((e) => ZipperOrderResponse.fromMap(e)).toList();
      return openOrders;
    } on DioException catch (e) {
      throw DioUtils.handleResponseException(e);
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }

  Future<List<ZipperOrderResponse>> fetchClosedOrders({
    required String token,
    required String clientCode,
    required int orderNo,
  }) async {
    try {
      final response = await _dio.post(ApiUrls.orderDetails,
          data: OrderApiReqeusts.fetchZipperOrderParams(
            token: token,
            clientCode: clientCode,
            status: ZipperOrderStatus.closed,
            orderNo: orderNo,
          ));
      final jsonList = (response.data['data'] as List<dynamic>);
      final closedOrders =
          jsonList.map((e) => ZipperOrderResponse.fromMap(e)).toList();
      return closedOrders;
    } on DioException catch (e) {
      throw DioUtils.handleResponseException(e);
    } catch (e) {
      throw CustomException(message: 'Hata Oluştu');
    }
  }
}

final zipperOrdersRepo = Provider<ZipperOrdersRepository>((ref) {
  return ZipperOrdersRepository(ref.watch(dioProvider));
});
