part of './zipper_data.dart';

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
