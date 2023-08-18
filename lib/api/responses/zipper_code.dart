part of './zipper_data.dart';

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
