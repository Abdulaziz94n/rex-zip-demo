part of './zipper_data.dart';

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
