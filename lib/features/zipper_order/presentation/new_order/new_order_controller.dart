import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/api/responses/zipper_data/zipper_data.dart';
import 'package:rex_zip/features/zipper_order/domain/zipper_model.dart';

class ZipperOrderController extends Notifier<ZipperModel> {
  @override
  build() {
    return ZipperModel.init();
  }

  // TODO delete after test
  // void update(ZipperData data) {
  //   switch (data) {
  //     case ZipperKind(subGroup: final val):
  //       state = state.copyWith(zipperType: val);
  //       continue newCase;
  //     newCase:
  //     case ZipperCursor(isBigSize: final isBig, desc: final desc)
  //         when desc == '':
  //       print('NEW CASE TRIGERRED');
  //     default:
  //   }
  // }

  void updateOrder(ZipperData val) {
    state = switch (val) {
      ZipperCode(code: final val) => state.copyWith(zipperCode: val),
      ZipperType(detailsGroup: final val) => state.copyWith(zipperType: val),
      ZipperKind(subGroup: final val) => state.copyWith(zipperKind: val),
      ZipperGroup(otherGroup: final val) => state.copyWith(zipperGroup: val),
      ZipperSeparator(stockCode: final val) =>
        state.copyWith(zipperSeparator: val),
      ZipperSubStopBox(stockCode: final val) =>
        state.copyWith(zipperSubStopBox: val),
      ZipperOutterType(stockCode: final val) =>
        state.copyWith(zipperOutterType: val),
      ZipperCursor(stockCode: final val) => state.copyWith(zipperCursor: val),
      ZipperCursorType(cursorDetailsGroup: final val) =>
        state.copyWith(zipperCursorType: val),
      ZipperCursorOverlayGroup(detailsGroup: final val) =>
        state.copyWith(zipperCursorOverlayGroup: val),
      ZipperCursorOverlayColor(stockCode: final val) =>
        state.copyWith(zipperCursorOverlayColor: val),
      ZipperSubCursorType(cursorDetailsGroup: final val) =>
        state.copyWith(zipperSubCursorType: val),
      ZipperSubCursor(stockCode: final val) =>
        state.copyWith(zipperSubCursor: val),
      ZipperSubCursorOverlayGroup(detailsGroup: final val) =>
        state.copyWith(zipperSubCursorOverlayGroup: val),
      ZipperSubCursorOverlayColor(stockCode: final val) =>
        state.copyWith(zipperSubCursorOverlayColor: val),
      ZipperHandgripGroup(detailsGroup: final val) =>
        state.copyWith(zipperHandgripGroup: val),
      ZipperHandgrip(stockCode: final val) =>
        state.copyWith(zipperHandgrip: val),
      ZipperHandgripOverlayGroup(detailsGroup: final val) =>
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
      ZipperTopStop(stockCode: final val) => state.copyWith(zipperTopStop: val),
      ZipperStopOverlay(stockCode: final val) =>
        state.copyWith(zipperStopOverlay: val),
    };
    print('new order = $state');
  }
}

final zipperOrderController =
    NotifierProvider<ZipperOrderController, ZipperModel>(
        ZipperOrderController.new);
