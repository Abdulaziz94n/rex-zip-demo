part of './zipper_data.dart';

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
