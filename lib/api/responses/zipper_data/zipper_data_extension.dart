import 'package:rex_zip/api/responses/zipper_data/zipper_data.dart';

extension ZipperDataX on ZipperData {
  String get val => _valFromType.val;
  String get photoUrl => _valFromType.photoUrl;

  ({String val, String photoUrl}) get _valFromType {
    return switch (this) {
      ZipperCode(code: final val, photoUrl: final photoUrl) => (
          val: val,
          photoUrl: photoUrl
        ),
      ZipperGroup(otherGroup: final val, photoUrl: final photoUrl) => (
          val: val,
          photoUrl: photoUrl,
        ),
      ZipperKind(subGroup: final val, photoUrl: final photoUrl) => (
          val: val,
          photoUrl: photoUrl,
        ),
      ZipperType(detailsGroup: final val, photoUrl: final photoUrl) => (
          val: val,
          photoUrl: photoUrl,
        ),
      ZipperSeparator(stockCode: final val, photoUrl: final photoUrl) => (
          val: val,
          photoUrl: photoUrl,
        ),
      ZipperSubStopBox(stockCode: final val, photoUrl: final photoUrl) => (
          val: val,
          photoUrl: photoUrl,
        ),
      ZipperOutterType(stockCode: final val, photoUrl: final photoUrl) => (
          val: val,
          photoUrl: photoUrl,
        ),
      ZipperCursor(stockCode: final val, photoUrl: final photoUrl) => (
          val: val,
          photoUrl: photoUrl,
        ),
      ZipperCursorType(
        cursorDetailsGroup: final val,
        photoUrl: final photoUrl
      ) =>
        (val: val, photoUrl: photoUrl),
      ZipperCursorOverlayGroup(
        detailsGroup: final val,
        photoUrl: final photoUrl
      ) =>
        (val: val, photoUrl: photoUrl),
      ZipperCursorOverlayColor(
        stockCode: final val,
        photoUrl: final photoUrl
      ) =>
        (val: val, photoUrl: photoUrl),
      ZipperSubCursorType(
        cursorDetailsGroup: final val,
        photoUrl: final photoUrl
      ) =>
        (val: val, photoUrl: photoUrl),
      ZipperSubCursor(stockCode: final val, photoUrl: final photoUrl) => (
          val: val,
          photoUrl: photoUrl
        ),
      ZipperSubCursorOverlayGroup(
        detailsGroup: final val,
        photoUrl: final photoUrl
      ) =>
        (val: val, photoUrl: photoUrl),
      ZipperSubCursorOverlayColor(
        stockCode: final val,
        photoUrl: final photoUrl
      ) =>
        (val: val, photoUrl: photoUrl),
      ZipperHandgripGroup(detailsGroup: final val, photoUrl: final photoUrl) =>
        (
          val: val,
          photoUrl: photoUrl,
        ),
      ZipperHandgrip(
        stockCode: final val,
        // photoUrl: final photoUrl,
      ) =>
        (
          val: val,
          photoUrl: '',
        ),
      ZipperHandgripOverlayGroup(
        detailsGroup: final val,
        photoUrl: final photoUrl
      ) =>
        (val: val, photoUrl: ''),
      ZipperHandgripOverlayColor(
        stockCode: final val,
        photoUrl: final photoUrl
      ) =>
        (val: val, photoUrl: ''),
      ZipperSubHandgripGroup(
        detailsGroup: final val,
        //  photoUrl: '',
      ) =>
        (val: val, photoUrl: ''),
      ZipperSubHandgrip(
        stockCode: final val,
      ) =>
        (
          val: val,
          photoUrl: '',
        ),
      ZipperSubHandgripOverlayGroup(
        detailsGroup: final val,
        photoUrl: final photoUrl
      ) =>
        (val: val, photoUrl: photoUrl),
      ZipperSubHandgripOverlayColor(
        stockCode: final val,
        photoUrl: final photoUrl
      ) =>
        (val: val, photoUrl: photoUrl),
      ZipperTopStop(stockCode: final val, photoUrl: final photoUrl) => (
          val: val,
          photoUrl: photoUrl,
        ),
      ZipperStopOverlay(stockCode: final val, photoUrl: final photoUrl) => (
          val: val,
          photoUrl: photoUrl,
        ),
    };
  }
}
