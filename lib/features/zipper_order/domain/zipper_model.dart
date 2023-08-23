import 'package:equatable/equatable.dart';

class ZipperModel extends Equatable {
  final String zipperKind;
  final String zipperType;
  final String zipperGroup;
  final String zipperCode;
  final String zipperSeparator;
  final String zipperSubStopBox;
  final String zipperOutterType;
  final String zipperCursor;
  final String zipperCursorType;
  final String zipperCursorOverlayGroup;
  final String zipperCursorOverlayColor;
  final String zipperSubCursorType;
  final String zipperSubCursor;
  final String zipperSubCursorOverlayGroup;
  final String zipperSubCursorOverlayColor;
  final String zipperHandgripGroup;
  final String zipperHandgrip;
  final String zipperHandgripOverlayGroup;
  final String zipperHandgripOverlayColor;
  final String zipperSubHandgripGroup;
  final String zipperSubHandgrip;
  final String zipperSubHandgripOverlayGroup;
  final String zipperSubHandgripOverlayColor;
  final String zipperTopStop;
  final String zipperStopOverlay;
  const ZipperModel({
    required this.zipperKind,
    required this.zipperType,
    required this.zipperGroup,
    required this.zipperCode,
    required this.zipperSeparator,
    required this.zipperSubStopBox,
    required this.zipperOutterType,
    required this.zipperCursor,
    required this.zipperCursorType,
    required this.zipperCursorOverlayGroup,
    required this.zipperCursorOverlayColor,
    required this.zipperSubCursorType,
    required this.zipperSubCursor,
    required this.zipperSubCursorOverlayGroup,
    required this.zipperSubCursorOverlayColor,
    required this.zipperHandgripGroup,
    required this.zipperHandgrip,
    required this.zipperHandgripOverlayGroup,
    required this.zipperHandgripOverlayColor,
    required this.zipperSubHandgripGroup,
    required this.zipperSubHandgrip,
    required this.zipperSubHandgripOverlayGroup,
    required this.zipperSubHandgripOverlayColor,
    required this.zipperTopStop,
    required this.zipperStopOverlay,
  });

  factory ZipperModel.init() {
    return const ZipperModel(
      zipperKind: '',
      zipperType: '',
      zipperGroup: '',
      zipperCode: '',
      zipperCursor: '',
      zipperCursorOverlayColor: '',
      zipperCursorOverlayGroup: '',
      zipperCursorType: '',
      zipperHandgrip: '',
      zipperHandgripGroup: '',
      zipperHandgripOverlayColor: '',
      zipperHandgripOverlayGroup: '',
      zipperOutterType: '',
      zipperSeparator: '',
      zipperStopOverlay: '',
      zipperSubCursor: '',
      zipperSubCursorOverlayColor: '',
      zipperSubCursorOverlayGroup: '',
      zipperSubCursorType: '',
      zipperSubHandgrip: '',
      zipperSubHandgripGroup: '',
      zipperSubHandgripOverlayColor: '',
      zipperSubHandgripOverlayGroup: '',
      zipperSubStopBox: '',
      zipperTopStop: '',
    );
  }

  ZipperModel copyWith({
    String? zipperKind,
    String? zipperType,
    String? zipperGroup,
    String? zipperCode,
    String? zipperSeparator,
    String? zipperSubStopBox,
    String? zipperOutterType,
    String? zipperCursor,
    String? zipperCursorType,
    String? zipperCursorOverlayGroup,
    String? zipperCursorOverlayColor,
    String? zipperSubCursorType,
    String? zipperSubCursor,
    String? zipperSubCursorOverlayGroup,
    String? zipperSubCursorOverlayColor,
    String? zipperHandgripGroup,
    String? zipperHandgrip,
    String? zipperHandgripOverlayGroup,
    String? zipperHandgripOverlayColor,
    String? zipperSubHandgripGroup,
    String? zipperSubHandgrip,
    String? zipperSubHandgripOverlayGroup,
    String? zipperSubHandgripOverlayColor,
    String? zipperTopStop,
    String? zipperStopOverlay,
  }) {
    return ZipperModel(
      zipperKind: zipperKind ?? this.zipperKind,
      zipperType: zipperType ?? this.zipperType,
      zipperGroup: zipperGroup ?? this.zipperGroup,
      zipperCode: zipperCode ?? this.zipperCode,
      zipperSeparator: zipperSeparator ?? this.zipperSeparator,
      zipperSubStopBox: zipperSubStopBox ?? this.zipperSubStopBox,
      zipperOutterType: zipperOutterType ?? this.zipperOutterType,
      zipperCursor: zipperCursor ?? this.zipperCursor,
      zipperCursorType: zipperCursorType ?? this.zipperCursorType,
      zipperCursorOverlayGroup:
          zipperCursorOverlayGroup ?? this.zipperCursorOverlayGroup,
      zipperCursorOverlayColor:
          zipperCursorOverlayColor ?? this.zipperCursorOverlayColor,
      zipperSubCursorType: zipperSubCursorType ?? this.zipperSubCursorType,
      zipperSubCursor: zipperSubCursor ?? this.zipperSubCursor,
      zipperSubCursorOverlayGroup:
          zipperSubCursorOverlayGroup ?? this.zipperSubCursorOverlayGroup,
      zipperSubCursorOverlayColor:
          zipperSubCursorOverlayColor ?? this.zipperSubCursorOverlayColor,
      zipperHandgripGroup: zipperHandgripGroup ?? this.zipperHandgripGroup,
      zipperHandgrip: zipperHandgrip ?? this.zipperHandgrip,
      zipperHandgripOverlayGroup:
          zipperHandgripOverlayGroup ?? this.zipperHandgripOverlayGroup,
      zipperHandgripOverlayColor:
          zipperHandgripOverlayColor ?? this.zipperHandgripOverlayColor,
      zipperSubHandgripGroup:
          zipperSubHandgripGroup ?? this.zipperSubHandgripGroup,
      zipperSubHandgrip: zipperSubHandgrip ?? this.zipperSubHandgrip,
      zipperSubHandgripOverlayGroup:
          zipperSubHandgripOverlayGroup ?? this.zipperSubHandgripOverlayGroup,
      zipperSubHandgripOverlayColor:
          zipperSubHandgripOverlayColor ?? this.zipperSubHandgripOverlayColor,
      zipperTopStop: zipperTopStop ?? this.zipperTopStop,
      zipperStopOverlay: zipperStopOverlay ?? this.zipperStopOverlay,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'zipperKind': zipperKind,
      'zipperType': zipperType,
      'zipperGroup': zipperGroup,
      'zipperCode': zipperCode,
      'zipperSeparator': zipperSeparator,
      'zipperSubStopBox': zipperSubStopBox,
      'zipperOutterType': zipperOutterType,
      'zipperCursor': zipperCursor,
      'zipperCursorType': zipperCursorType,
      'zipperCursorOverlayGroup': zipperCursorOverlayGroup,
      'zipperCursorOverlayColor': zipperCursorOverlayColor,
      'zipperSubCursorType': zipperSubCursorType,
      'zipperSubCursor': zipperSubCursor,
      'zipperSubCursorOverlayGroup': zipperSubCursorOverlayGroup,
      'zipperSubCursorOverlayColor': zipperSubCursorOverlayColor,
      'zipperHandgripGroup': zipperHandgripGroup,
      'zipperHandgrip': zipperHandgrip,
      'zipperHandgripOverlayGroup': zipperHandgripOverlayGroup,
      'zipperHandgripOverlayColor': zipperHandgripOverlayColor,
      'zipperSubHandgripGroup': zipperSubHandgripGroup,
      'zipperSubHandgrip': zipperSubHandgrip,
      'zipperSubHandgripOverlayGroup': zipperSubHandgripOverlayGroup,
      'zipperSubHandgripOverlayColor': zipperSubHandgripOverlayColor,
      'zipperTopStop': zipperTopStop,
      'zipperStopOverlay': zipperStopOverlay,
    };
  }

  @override
  List<Object> get props {
    return [
      zipperKind,
      zipperType,
      zipperGroup,
      zipperCode,
      zipperSeparator,
      zipperSubStopBox,
      zipperOutterType,
      zipperCursor,
      zipperCursorType,
      zipperCursorOverlayGroup,
      zipperCursorOverlayColor,
      zipperSubCursorType,
      zipperSubCursor,
      zipperSubCursorOverlayGroup,
      zipperSubCursorOverlayColor,
      zipperHandgripGroup,
      zipperHandgrip,
      zipperHandgripOverlayGroup,
      zipperHandgripOverlayColor,
      zipperSubHandgripGroup,
      zipperSubHandgrip,
      zipperSubHandgripOverlayGroup,
      zipperSubHandgripOverlayColor,
      zipperTopStop,
      zipperStopOverlay,
    ];
  }

  @override
  String toString() {
    return 'ZipperModel(zipperKind: $zipperKind, zipperType: $zipperType, zipperGroup: $zipperGroup, zipperCode: $zipperCode, zipperSeparator: $zipperSeparator, zipperSubStopBox: $zipperSubStopBox, zipperOutterType: $zipperOutterType, zipperCursor: $zipperCursor, zipperCursorType: $zipperCursorType, zipperCursorOverlayGroup: $zipperCursorOverlayGroup, zipperCursorOverlayColor: $zipperCursorOverlayColor, zipperSubCursorType: $zipperSubCursorType, zipperSubCursor: $zipperSubCursor, zipperSubCursorOverlayGroup: $zipperSubCursorOverlayGroup, zipperSubCursorOverlayColor: $zipperSubCursorOverlayColor, zipperHandgripGroup: $zipperHandgripGroup, zipperHandgrip: $zipperHandgrip, zipperHandgripOverlayGroup: $zipperHandgripOverlayGroup, zipperHandgripOverlayColor: $zipperHandgripOverlayColor, zipperSubHandgripGroup: $zipperSubHandgripGroup, zipperSubHandgrip: $zipperSubHandgrip, zipperSubHandgripOverlayGroup: $zipperSubHandgripOverlayGroup, zipperSubHandgripOverlayColor: $zipperSubHandgripOverlayColor, zipperTopStop: $zipperTopStop, zipperStopOverlay: $zipperStopOverlay)';
  }
}
