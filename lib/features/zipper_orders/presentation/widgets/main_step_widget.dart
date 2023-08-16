import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainStepWidget extends StatelessWidget {
  const MainStepWidget({
    super.key,
    required this.iconPath,
    required this.mainIndex,
    required this.index,
  });

  final String iconPath;
  final int mainIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SvgPicture.asset(
        iconPath,
        width: 100,
        height: 75,
        color: mainIndex >= index ? Colors.red : Colors.white,
      ),
    );
  }
}
