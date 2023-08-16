import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension WidgetExtension on Widget {
  //
  Widget webSize({required Size size}) => SizedBox(
        width: kIsWeb ? size.width : null,
        height: kIsWeb ? size.height : null,
        child: this,
      );
  Widget webWidth({double? width}) => SizedBox(
        width: kIsWeb ? width : null,
        child: this,
      );
  Widget webHeight({double? height}) => SizedBox(
        height: kIsWeb ? height : null,
        child: this,
      );
  Widget webConfig({
    double? width,
    double? height,
    MouseCursor? cursor,
    Function(PointerEnterEvent)? onEnter,
    Function(PointerExitEvent)? onExit,
    Function(PointerHoverEvent)? onHover,
  }) =>
      SizedBox(
        width: kIsWeb ? width : null,
        height: kIsWeb ? height : null,
        child: MouseRegion(
          onEnter: onEnter,
          onExit: onExit,
          onHover: onHover,
          cursor: cursor ?? MouseCursor.defer,
          child: this,
        ),
      );
  Widget coloredPadded({Color? color, double? paddingVal}) => ColoredBox(
        color: color ?? Colors.yellow,
        child: Padding(
          padding: EdgeInsets.all(paddingVal ?? 4),
          child: this,
        ),
      );

  Widget paddedColored({Color? color, double? paddingVal}) => Padding(
        padding: EdgeInsets.all(paddingVal ?? 4),
        child: ColoredBox(
          color: color ?? Colors.red,
          child: this,
        ),
      );

  Widget colored({Color? color}) => ColoredBox(
        color: color ?? Colors.red,
        child: this,
      );

  List<Widget> operator *(int multiplier) {
    List<Widget> result = [];
    for (int i = 0; i < multiplier; i++) {
      result.add(this);
    }
    return result;
  }

  Widget padding({required EdgeInsets padding}) =>
      Padding(padding: padding, child: this);

  Widget align({Alignment? alignment, Alignment? webAlignment}) => kIsWeb
      ? Align(alignment: webAlignment ?? Alignment.centerLeft, child: this)
      : Align(alignment: alignment ?? Alignment.centerLeft, child: this);

  Widget get center => Center(child: this);

  Widget wrapWithEmptyChecker<T>(List<T> items, Widget isEmptyWidget) {
    return items.isEmpty ? isEmptyWidget : this;
  }
}
