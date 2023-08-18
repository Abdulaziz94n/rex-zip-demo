import 'package:rex_zip/api/responses/zipper_data.dart';

class DummyData {
  static List<Map> mapData = [
    {
      'name': 'Naylon Fermuar',
      'photoUrl': 'photo Url',
    },
    {
      'name': 'Metal Fermuar',
      'photoUrl': 'photo Url',
    },
    {
      'name': 'Kemik Fermuar',
      'photoUrl': 'photo Url',
    },
    {
      'name': 'Kursor Fermuar',
      'photoUrl': 'photo Url',
    },
  ];

  static List<ZipperGroup> zipprGroupList = [
    const ZipperGroup(
      photoUrl: 'photoUrl 1',
      webGoster: 'webGoster',
      otherGroup: 'otherGroup',
      desc: 'desc 1',
    ),
    const ZipperGroup(
      photoUrl: 'photoUrl 2',
      webGoster: 'webGoster',
      otherGroup: 'otherGroup',
      desc: 'desc 2',
    ),
    const ZipperGroup(
      photoUrl: 'photoUrl 3',
      webGoster: 'webGoster',
      otherGroup: 'otherGroup',
      desc: 'desc 3',
    ),
  ];

  static List<ZipperKind> zipperKindsList = [
    const ZipperKind(
        subGroup: 'subGroup 1',
        webGoster: 'webGoster',
        photoUrl: 'photoUrl 1',
        desc: 'desc 1'),
    const ZipperKind(
        subGroup: 'subGroup 2',
        webGoster: 'webGoster',
        photoUrl: 'photoUrl 2',
        desc: 'desc 2'),
    const ZipperKind(
        subGroup: 'subGroup 3',
        webGoster: 'webGoster',
        photoUrl: 'photoUrl 3',
        desc: 'desc 3'),
    const ZipperKind(
        subGroup: 'subGroup 4',
        webGoster: 'webGoster',
        photoUrl: 'photoUrl 4',
        desc: 'desc 4'),
  ];

  static List<ZipperType> zipperTypesList = [
    const ZipperType(
      photoUrl: 'photoUrl',
      webGoster: 'webGoster',
      desc: 'desc',
      detailsGroup: 'detailsGroup 1',
    ),
    const ZipperType(
      photoUrl: 'photoUrl',
      webGoster: 'webGoster',
      desc: 'desc',
      detailsGroup: 'detailsGroup 2',
    ),
    const ZipperType(
      photoUrl: 'photoUrl',
      webGoster: 'webGoster',
      desc: 'desc',
      detailsGroup: 'detailsGroup 3',
    ),
    const ZipperType(
      photoUrl: 'photoUrl',
      webGoster: 'webGoster',
      desc: 'desc',
      detailsGroup: 'detailsGroup 4',
    ),
    const ZipperType(
      photoUrl: 'photoUrl',
      webGoster: 'webGoster',
      desc: 'desc',
      detailsGroup: 'detailsGroup 5',
    ),
  ];
}
