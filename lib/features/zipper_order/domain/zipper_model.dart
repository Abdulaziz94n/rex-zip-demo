import 'package:equatable/equatable.dart';

class ZipperModel extends Equatable {
  final String zipperKind;
  const ZipperModel({
    required this.zipperKind,
  });

  @override
  List<Object> get props => [zipperKind];
}
