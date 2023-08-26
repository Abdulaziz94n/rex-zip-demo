import 'package:rex_zip/api/constants/api_keys.dart';
import 'package:rex_zip/features/order_type/domain/order_type.dart';
import 'package:rex_zip/features/zipper_order/domain/zipper_order_status.dart';

class OrderApiReqeusts {
  OrderApiReqeusts._();
  static fetchZipperOrderParams({
    required String token,
    required String clientCode,
    required ZipperOrderStatus status,
    required int orderNo,
  }) {
    return {
      ApiKeys.token: token,
      ApiKeys.clientCodeSnakCase: clientCode,
      ApiKeys.orderStatus: status.type,
      ApiKeys.orderType: OrderType.zipper.type,
      ApiKeys.orderNo: orderNo,
    };
  }
}
