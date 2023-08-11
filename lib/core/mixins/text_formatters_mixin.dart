import 'package:flutter/services.dart';

mixin AppTextFormatter {
  TextInputFormatter numOnlyZeroFormatter() =>
      FilteringTextInputFormatter.allow(
        RegExp(r'^\d*\.?\d{0,2}'),
      );

  CommaTextInputFormatter intWithCommasFormatter() {
    CommaTextInputFormatter commaFormatter = CommaTextInputFormatter();
    return commaFormatter;
  }
}

///
///
///

class CommaTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final numericValue = int.tryParse(newValue.text.replaceAll(',', '')) ?? 0;
    final formattedValue = _formatWithCommas(numericValue);

    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: formattedValue.length),
    );
  }

  String _formatWithCommas(int value) {
    final stringValue = value.toString();
    final segments = stringValue.split('').reversed;

    final formattedSegments = <String>[];
    for (var i = 0; i < segments.length; i++) {
      if (i != 0 && i % 3 == 0) {
        formattedSegments.add(',');
      }
      formattedSegments.add(segments.elementAt(i));
    }

    return formattedSegments.reversed.join();
  }
}

class CommaTextInputFormatter2 extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final numericValue = int.tryParse(newValue.text.replaceAll(',', '')) ?? 0;
    final formattedValue = _formatWithCommas(numericValue);

    final selectionIndex = newValue.selection.baseOffset +
        (formattedValue.length - newValue.text.length);

    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }

  String _formatWithCommas(int value) {
    final stringValue = value.toString();
    final segments = stringValue.split('').reversed;

    final formattedSegments = <String>[];
    for (var i = 0; i < segments.length; i++) {
      if (i != 0 && i % 3 == 0) {
        formattedSegments.add(',');
      }
      formattedSegments.add(segments.elementAt(i));
    }

    return formattedSegments.reversed.join();
  }
}
