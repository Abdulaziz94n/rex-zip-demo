import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/responses/zipper_data.dart';
import 'package:rex_zip/features/zipper_order/domain/zipper_order.dart';

class ZipperOrderController extends Notifier<ZipperOrder> {
  @override
  build() {
    return ZipperOrder.init();
  }

  void updateOrder(ZipperData val) {
    state = switch (val) {
      ZipperCode(desc: final desc) => state.copyWith(zipperCode: desc),
      ZipperType(desc: final desc) => state.copyWith(zipperType: desc),
      ZipperKind(desc: final desc) => state.copyWith(zipperKind: desc),
      ZipperGroup(desc: final desc) => state.copyWith(zipperGroup: desc)
    };
    print('new order = $state');
    // state  = ;
  }
}

final zipperOrderController =
    NotifierProvider<ZipperOrderController, ZipperOrder>(
        ZipperOrderController.new);
