import 'package:flutter/material.dart';

class AppBorderedBox extends StatelessWidget {
  const AppBorderedBox.withIcon({
    super.key,
    required this.width,
    required this.height,
    required this.icon,
    this.iconColor,
    this.iconSize,
    this.boxShape,
    this.background,
    this.borderWidth,
    this.borderColor,
    this.radius,
    this.onTap,
  }) : child = null;

  const AppBorderedBox.withChild({
    super.key,
    required this.width,
    required this.height,
    required this.child,
    this.onTap,
    this.boxShape,
    this.background,
    this.borderWidth,
    this.borderColor,
    this.radius,
  })  : icon = null,
        iconColor = null,
        iconSize = null;

  final double width;
  final double height;
  final BoxShape? boxShape;
  final Color? background;
  final double? borderWidth;
  final Color? borderColor;
  final double? radius;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final Widget? child;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                offset: Offset(0, 0),
                color: Colors.white10,
              ),
            ],
            shape: boxShape ?? BoxShape.circle,
            borderRadius: boxShape == BoxShape.circle
                ? null
                : BorderRadius.circular(radius ?? 0),
            color: background,
            border: Border.all(
              width: borderWidth ?? 1,
              color: borderColor ?? Colors.white,
            ),
          ),
          child: child ??
              Center(
                child: Icon(
                  icon,
                  color: iconColor,
                  size: iconSize,
                ),
              ),
        ),
      ),
    );
  }
}
