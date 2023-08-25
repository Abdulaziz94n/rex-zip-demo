part of 'zipper_data.dart';

class ZipperHandgripGroup extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String detailsGroup;
  const ZipperHandgripGroup({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.detailsGroup,
  });

  factory ZipperHandgripGroup.fromMap(Map<String, dynamic> map) {
    return ZipperHandgripGroup(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      detailsGroup: map[ApiKeys.detailsGroupSnackcase] ?? '',
    );
  }
}

class ZipperHandgrip extends ZipperData with EquatableMixin {
  final String stockCode;
  final int isMine;
  final int isSilme;
  ZipperHandgrip({
    required this.stockCode,
    required this.isMine,
    required this.isSilme,
  });

  factory ZipperHandgrip.fromMap(Map<String, dynamic> map) {
    return ZipperHandgrip(
      stockCode: map[ApiKeys.stockCode] ?? '',
      isMine: map[ApiKeys.isMine] ?? 0,
      isSilme: map[ApiKeys.isSilme] ?? 0,
    );
  }
}

class ZipperHandgripOverlayGroup extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String detailsGroup;
  const ZipperHandgripOverlayGroup({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.detailsGroup,
  });

  factory ZipperHandgripOverlayGroup.fromMap(Map<String, dynamic> map) {
    return ZipperHandgripOverlayGroup(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      detailsGroup: map[ApiKeys.detailsGroupSnackcase] ?? '',
    );
  }
}

class ZipperHandgripOverlayColor extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String stockCode;
  const ZipperHandgripOverlayColor({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.stockCode,
  });

  factory ZipperHandgripOverlayColor.fromMap(Map<String, dynamic> map) {
    return ZipperHandgripOverlayColor(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      stockCode: map[ApiKeys.stockCode] ?? '',
    );
  }
}

class ZipperSubHandgripGroup extends ZipperData with EquatableMixin {
  final String detailsGroup;
  const ZipperSubHandgripGroup({
    required this.detailsGroup,
  });

  factory ZipperSubHandgripGroup.fromMap(Map<String, dynamic> map) {
    return ZipperSubHandgripGroup(
      detailsGroup: map[ApiKeys.detailsGroupSnackcase] ?? '',
    );
  }
}

class ZipperSubHandgrip extends ZipperData with EquatableMixin {
  final String stockCode;
  final int isMine;
  final int isSilme;
  ZipperSubHandgrip({
    required this.stockCode,
    required this.isMine,
    required this.isSilme,
  });

  factory ZipperSubHandgrip.fromMap(Map<String, dynamic> map) {
    return ZipperSubHandgrip(
      stockCode: map[ApiKeys.stockCode] ?? '',
      isMine: map[ApiKeys.isMine] ?? 0,
      isSilme: map[ApiKeys.isSilme] ?? 0,
    );
  }
}

class ZipperSubHandgripOverlayGroup extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String detailsGroup;
  const ZipperSubHandgripOverlayGroup({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.detailsGroup,
  });

  factory ZipperSubHandgripOverlayGroup.fromMap(Map<String, dynamic> map) {
    return ZipperSubHandgripOverlayGroup(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      detailsGroup: map[ApiKeys.detailsGroupSnackcase] ?? '',
    );
  }
}

class ZipperSubHandgripOverlayColor extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String stockCode;
  const ZipperSubHandgripOverlayColor({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.stockCode,
  });

  factory ZipperSubHandgripOverlayColor.fromMap(Map<String, dynamic> map) {
    return ZipperSubHandgripOverlayColor(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      stockCode: map[ApiKeys.stockCode] ?? '',
    );
  }
}

class ZipperTopStop extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String stockCode;
  const ZipperTopStop({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.stockCode,
  });

  factory ZipperTopStop.fromMap(Map<String, dynamic> map) {
    return ZipperTopStop(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      stockCode: map[ApiKeys.stockCode] ?? '',
    );
  }
}

class ZipperStopOverlay extends ZipperData with EquatableMixin {
  final String photoUrl;
  final String webGoster;
  final String desc;
  final String stockCode;
  const ZipperStopOverlay({
    required this.photoUrl,
    required this.webGoster,
    required this.desc,
    required this.stockCode,
  });

  factory ZipperStopOverlay.fromMap(Map<String, dynamic> map) {
    return ZipperStopOverlay(
      photoUrl: map[ApiKeys.webPhotoUrl] ?? '',
      webGoster: map[ApiKeys.webGoster] ?? '',
      desc: map[ApiKeys.webDesc] ?? '',
      stockCode: map[ApiKeys.stockCode] ?? '',
    );
  }
}
