import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubStepWidget extends StatelessWidget {
  const SubStepWidget({
    super.key,
    required this.iconPath,
    required this.subIndex,
    required this.index,
  });

  final String iconPath;
  final int subIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SvgPicture.asset(
        iconPath,
        width: 100,
        height: 75,
        color: subIndex >= index ? Colors.red : Colors.black,
      ),
    );
  }
}
