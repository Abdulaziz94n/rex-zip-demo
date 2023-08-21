part of 'zipper_data.dart';

class ZipperCursorType extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String cursorDetailsGroup;
  const ZipperCursorType({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.cursorDetailsGroup,
  });

  factory ZipperCursorType.fromMap(Map<String, dynamic> map) {
    return ZipperCursorType(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      cursorDetailsGroup: map[ApiKeys.cursorDetailsGroup] ?? '',
    );
  }
}

class ZipperCursor extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String stockCode;
  final int isSmallSize;
  final int isMidSize;
  final int isBigSize;
  final int isSelfHandgrip;
  const ZipperCursor({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.stockCode,
    required this.isSmallSize,
    required this.isMidSize,
    required this.isBigSize,
    required this.isSelfHandgrip,
  });

  factory ZipperCursor.fromMap(Map<String, dynamic> map) {
    return ZipperCursor(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      stockCode: map[ApiKeys.stockCode] ?? '',
      isSmallSize: map[ApiKeys.isSmallSize] ?? '',
      isMidSize: map[ApiKeys.isMidSize] ?? '',
      isBigSize: map[ApiKeys.isBigSize] ?? '',
      isSelfHandgrip: map[ApiKeys.isSelfHandgrip] ?? '',
    );
  }
}

class ZipperCursorOverlayGroup extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String detailsGroup;
  const ZipperCursorOverlayGroup({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.detailsGroup,
  });

  factory ZipperCursorOverlayGroup.fromMap(Map<String, dynamic> map) {
    return ZipperCursorOverlayGroup(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      detailsGroup: map[ApiKeys.detailsGroupSnackcase] ?? '',
    );
  }
}

class ZipperCursorOverlayColor extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String stockCode;
  const ZipperCursorOverlayColor({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.stockCode,
  });

  factory ZipperCursorOverlayColor.fromMap(Map<String, dynamic> map) {
    return ZipperCursorOverlayColor(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      stockCode: map[ApiKeys.stockCode] ?? '',
    );
  }
}

class ZipperSubCursorType extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String cursorDetailsGroup;
  const ZipperSubCursorType({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.cursorDetailsGroup,
  });

  factory ZipperSubCursorType.fromMap(Map<String, dynamic> map) {
    return ZipperSubCursorType(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      cursorDetailsGroup: map[ApiKeys.cursorDetailsGroup] ?? '',
    );
  }
}

class ZipperSubCursor extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String stockCode;
  final int isSmallSize;
  final int isMidSize;
  final int isBigSize;
  final int isSelfHandgrip;
  const ZipperSubCursor({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.stockCode,
    required this.isSmallSize,
    required this.isMidSize,
    required this.isBigSize,
    required this.isSelfHandgrip,
  });

  factory ZipperSubCursor.fromMap(Map<String, dynamic> map) {
    return ZipperSubCursor(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      stockCode: map[ApiKeys.stockCode] ?? '',
      isSmallSize: map[ApiKeys.isSmallSize] ?? '',
      isMidSize: map[ApiKeys.isMidSize] ?? '',
      isBigSize: map[ApiKeys.isBigSize] ?? '',
      isSelfHandgrip: map[ApiKeys.isSelfHandgrip] ?? '',
    );
  }
}

class ZipperSubCursorOverlayGroup extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String detailsGroup;
  const ZipperSubCursorOverlayGroup({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.detailsGroup,
  });

  factory ZipperSubCursorOverlayGroup.fromMap(Map<String, dynamic> map) {
    return ZipperSubCursorOverlayGroup(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      detailsGroup: map[ApiKeys.detailsGroupSnackcase] ?? '',
    );
  }
}

class ZipperSubCursorOverlayColor extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String stockCode;
  const ZipperSubCursorOverlayColor({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.stockCode,
  });

  factory ZipperSubCursorOverlayColor.fromMap(Map<String, dynamic> map) {
    return ZipperSubCursorOverlayColor(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      stockCode: map[ApiKeys.stockCode] ?? '',
    );
  }
}
