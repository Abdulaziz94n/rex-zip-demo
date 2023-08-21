import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/responses/zipper_data.dart';
import 'package:rex_zip/features/zipper_order/domain/zipper_model.dart';

class ZipperOrderController extends Notifier<ZipperModel> {
  @override
  build() {
    return ZipperModel.init();
  }

  void updateOrder(ZipperData val) {
    state = switch (val) {
      ZipperCode(desc: final val) => state.copyWith(zipperCode: val),
      ZipperType(desc: final val) => state.copyWith(zipperType: val),
      ZipperKind(desc: final val) => state.copyWith(zipperKind: val),
      ZipperGroup(desc: final val) => state.copyWith(zipperGroup: val),
      ZipperSeparator(desc: final val) => state.copyWith(zipperSeparator: val),
      ZipperSubStopBox(desc: final val) =>
        state.copyWith(zipperSubStopBox: val),
      ZipperOutterType(desc: final val) =>
        state.copyWith(zipperOutterType: val),
      ZipperCursor(desc: final val) => state.copyWith(zipperCursor: val),
      ZipperCursorType(desc: final val) =>
        state.copyWith(zipperCursorType: val),
      ZipperCursorOverlayGroup(desc: final val) =>
        state.copyWith(zipperCursorOverlayGroup: val),
      ZipperCursorOverlayColor(desc: final val) =>
        state.copyWith(zipperCursorOverlayColor: val),
      ZipperSubCursorType(desc: final val) =>
        state.copyWith(zipperSubCursorType: val),
      ZipperSubCursor(desc: final val) => state.copyWith(zipperSubCursor: val),
      ZipperSubCursorOverlayGroup(desc: final val) =>
        state.copyWith(zipperSubCursorOverlayGroup: val),
      ZipperSubCursorOverlayColor(desc: final val) =>
        state.copyWith(zipperSubCursorOverlayColor: val),
      ZipperHandgripGroup(desc: final val) =>
        state.copyWith(zipperHandgripGroup: val),
      ZipperHandgrip(stockCode: final val) =>
        state.copyWith(zipperHandgrip: val),
      ZipperHandgripOverlayGroup(desc: final val) =>
        state.copyWith(zipperHandgripOverlayGroup: val),
      ZipperHandgripOverlayColor(desc: final val) =>
        state.copyWith(zipperHandgripOverlayColor: val),
      ZipperSubHandgripGroup(detailsGroup: final val) =>
        state.copyWith(zipperSubHandgripGroup: val),
      ZipperSubHandgrip(stockCode: final val) =>
        state.copyWith(zipperSubHandgrip: val),
      ZipperSubHandgripOverlayGroup(desc: final val) =>
        state.copyWith(zipperSubHandgripOverlayGroup: val),
      ZipperSubHandgripOverlayColor(desc: final val) =>
        state.copyWith(zipperSubHandgripOverlayColor: val),
      ZipperTopStop(desc: final val) => state.copyWith(zipperTopStop: val),
      ZipperStopOverlay(desc: final val) =>
        state.copyWith(zipperStopOverlay: val),
    };
    print('new order = $state');
    // state  = ;
  }
}

final zipperOrderController =
    NotifierProvider<ZipperOrderController, ZipperModel>(
        ZipperOrderController.new);
