import 'package:equatable/equatable.dart';
import 'package:rex_zip/api/constants/api_keys.dart';

part 'zipper_code.dart';
part 'zipper_group.dart';
part 'zipper_kind.dart';
part 'zipper_type.dart';

sealed class ZipperData with EquatableMixin {
  const ZipperData();

  static String textFromType(ZipperData data) {
    return switch (data) {
      ZipperCode(desc: final val) => val,
      ZipperGroup(desc: final val) => val,
      ZipperKind(desc: final val) => val,
      ZipperType(desc: final val) => val,
    };
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
