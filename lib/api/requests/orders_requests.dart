import 'package:rex_zip/api/constants/api_keys.dart';
import 'package:rex_zip/features/zipper_order/domain/zipper_order_status.dart';

class OrderApiReqeusts {
  static fetchOpenOrderParams({
    required String token,
    required String clientCode,
    required ZipperOrderStatus status,
    required String orderNo,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCode: clientCode,
      ApiKeys.orderStatus: status.type,
      ApiKeys.orderNo: orderNo,
    };
  }
}
