import 'package:equatable/equatable.dart';
import 'package:rex_zip/api/constants/api_keys.dart';

part 'zipper_cursor_data.dart';
part 'zipper_handgrip_data.dart';

sealed class ZipperData with EquatableMixin {
  const ZipperData();

  static ({String val, String photoUrl}) valFromType(ZipperData data) {
    return switch (data) {
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

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ZipperCode extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String code;
  const ZipperCode({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.code,
  });

  factory ZipperCode.fromMap(Map<String, dynamic> map) {
    return ZipperCode(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      code: map[ApiKeys.code] ?? '',
    );
  }

  @override
  List<Object> get props => [photoUrl, webGoster, desc, code];
}

class ZipperGroup extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String otherGroup;
  final String desc;
  const ZipperGroup({
    required this.photoUrl,
    required this.webGoster,
    required this.otherGroup,
    required this.desc,
  });

  factory ZipperGroup.fromMap(Map<String, dynamic> map) {
    return ZipperGroup(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      otherGroup: map[ApiKeys.resOtherGroup] ?? '',
    );
  }

  @override
  List<Object> get props => [photoUrl, webGoster, otherGroup, desc];
}

class ZipperKind extends ZipperData with EquatableMixin {
  final String subGroup;
  final String webGoster;
  final String photoUrl;
  final String desc;
  const ZipperKind({
    required this.subGroup,
    required this.webGoster,
    required this.photoUrl,
    required this.desc,
  });

  factory ZipperKind.fromMap(Map<String, dynamic> map) {
    return ZipperKind(
      subGroup: map[ApiKeys.resSubGroup] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
    );
  }

  @override
  List<Object> get props => [subGroup, webGoster, photoUrl, desc];
}

class ZipperType extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String detailsGroup;
  final String desc;
  const ZipperType({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.detailsGroup,
  });

  factory ZipperType.fromMap(Map<String, dynamic> map) {
    return ZipperType(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      detailsGroup: map[ApiKeys.detailsGroup] ?? '',
    );
  }

  @override
  List<Object> get props => [photoUrl, webGoster, detailsGroup, desc];
}

class ZipperSeparator extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final int isSubCursorHandgrip;
  final String stockCode;
  const ZipperSeparator({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.isSubCursorHandgrip,
    required this.stockCode,
  });

  factory ZipperSeparator.fromMap(Map<String, dynamic> map) {
    return ZipperSeparator(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      isSubCursorHandgrip: map[ApiKeys.isSubCursorHandgrip] ?? 0,
      stockCode: map[ApiKeys.stockCode] ?? '',
    );
  }
}

class ZipperSubStopBox extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String stockCode;
  const ZipperSubStopBox({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.stockCode,
  });

  factory ZipperSubStopBox.fromMap(Map<String, dynamic> map) {
    return ZipperSubStopBox(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      stockCode: map[ApiKeys.stockCode] ?? '',
    );
  }
}

class ZipperOutterType extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final int isSewingThread;
  final int isContrastingOutterColor;
  final String desc;
  final String stockCode;
  const ZipperOutterType({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.stockCode,
    required this.isSewingThread,
    required this.isContrastingOutterColor,
  });

  factory ZipperOutterType.fromMap(Map<String, dynamic> map) {
    return ZipperOutterType(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      stockCode: map[ApiKeys.stockCode] ?? '',
      isSewingThread: map[ApiKeys.isSewingThread] ?? 0,
      isContrastingOutterColor: map[ApiKeys.isContrastingOutterColor] ?? 0,
    );
  }
}
