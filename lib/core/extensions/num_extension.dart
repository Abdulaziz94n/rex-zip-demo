extension NumExtension on num {
  double normalize(double max) {
    return (this / max).abs();
  }

  bool isWithinRange(num start, num end) {
    return this >= start && this <= end;
  }

  String get maskedString {
    final stringValue = toString();
    final segments = stringValue.split('.');

    final wholePart = segments[0].replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (match) => '${match[1]},',
    );

    final decimalPart = segments.length > 1 ? '.${segments[1]}' : '';

    return '$wholePart$decimalPart';
  }
}
