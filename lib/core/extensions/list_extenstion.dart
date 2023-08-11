import 'package:flutter/material.dart';

extension ListExtension<T> on List<T> {
  List<DropdownMenuItem<T>> toDropdownItems(
      {required Widget Function(T item) childBuilder}) {
    return map((e) => DropdownMenuItem<T>(value: e, child: childBuilder(e)))
        .toList();
  }

  void sortBy<R extends Comparable>(R Function(T) selector,
      {bool descending = false}) {
    if (descending) {
      sort((a, b) => selector(b).compareTo(selector(a)));
    } else {
      sort((a, b) => selector(a).compareTo(selector(b)));
    }
  }

  List<T> operator *(int multiplier) {
    List<T> result = [];
    for (int i = 0; i < multiplier; i++) {
      result.addAll(this);
    }
    return result;
  }
}
