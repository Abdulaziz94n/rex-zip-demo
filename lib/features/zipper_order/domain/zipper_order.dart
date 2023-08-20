import 'package:equatable/equatable.dart';

class ZipperOrder extends Equatable {
  final String zipperKind;
  final String zipperType;
  final String zipperGroup;
  final String zipperCode;
  const ZipperOrder({
    required this.zipperKind,
    required this.zipperType,
    required this.zipperGroup,
    required this.zipperCode,
  });

  factory ZipperOrder.init() {
    return const ZipperOrder(
      zipperKind: '',
      zipperType: '',
      zipperGroup: '',
      zipperCode: '',
      // + ~15 other attributes
    );
  }

  ZipperOrder copyWith({
    String? zipperKind,
    String? zipperType,
    String? zipperGroup,
    String? zipperCode,
  }) {
    return ZipperOrder(
      zipperKind: zipperKind ?? this.zipperKind,
      zipperType: zipperType ?? this.zipperType,
      zipperGroup: zipperGroup ?? this.zipperGroup,
      zipperCode: zipperCode ?? this.zipperCode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'zipperKind': zipperKind,
      'zipperType': zipperType,
      'zipperGroup': zipperGroup,
      'zipperCode': zipperCode,
    };
  }

  @override
  List<Object> get props => [zipperKind, zipperType, zipperGroup, zipperCode];
}
