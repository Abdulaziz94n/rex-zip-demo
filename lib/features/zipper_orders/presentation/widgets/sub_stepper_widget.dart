import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rex_zip/core/extensions/widget_extension.dart';

class SubStepperWidget extends ConsumerWidget {
  const SubStepperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('data '),
                ) *
                5
          ],
        ),
      ),
    );
  }
}
