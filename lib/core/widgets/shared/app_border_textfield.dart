import 'package:flutter/material.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';

class AppBorderedTextField extends StatelessWidget {
  const AppBorderedTextField(
      {super.key,
      required this.controller,
      required this.label,
      this.maxLines,
      this.enabled = true});

  final TextEditingController controller;
  final String label;
  final int? maxLines;
  final bool? enabled;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      cursorColor: Colors.black,
      cursorWidth: 1,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        label: AppText(
          text: label,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        isDense: true,
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
      ),
    );
  }
}
