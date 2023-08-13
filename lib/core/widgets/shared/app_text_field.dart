import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rex_zip/core/constants/sizes.dart';
import 'package:rex_zip/core/extensions/build_context_extension.dart';
import 'package:rex_zip/core/extensions/string_extension.dart';
import 'package:rex_zip/core/widgets/shared/app_forward_arraow_icon.dart';
import 'package:rex_zip/core/widgets/shared/app_text.dart';
import 'package:rex_zip/core/widgets/shared/spacing_widgets.dart';

const _kBorderRadius = 50.0;

class AppTextField extends StatelessWidget {
  const AppTextField.withController({
    super.key,
    required this.controller,
    required this.label,
    this.hint,
    this.width,
    this.inputFormatters,
    this.enabled,
    this.prefixIcon,
    this.maxLines,
    this.fontSize,
    this.inputType,
    this.onChanged,
    this.isDense,
    this.obscure,
    this.contentPadding,
    this.validator,
    this.suffixIcon,
  })  : initialValue = null,
        assert(controller != null);

  final TextEditingController? controller;
  final double? width;
  final bool? enabled;
  final bool? obscure;
  final String label;
  final String? hint;
  final Widget? prefixIcon;
  final int? maxLines;
  final double? fontSize;
  final EdgeInsets? contentPadding;
  final bool? isDense;
  final String? initialValue;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;

  const AppTextField.withOnChanged({
    super.key,
    required this.onChanged,
    required this.label,
    this.inputFormatters,
    this.hint,
    this.obscure,
    this.enabled,
    this.prefixIcon,
    this.maxLines,
    this.fontSize,
    this.inputType,
    this.isDense,
    this.initialValue,
    this.contentPadding,
    this.validator,
    this.suffixIcon,
    this.width,
  }) : controller = null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: width,
        child: TextFormField(
          initialValue: initialValue,
          obscureText: obscure ?? false,
          enabled: enabled,
          controller: controller,
          cursorColor: context.appColors.secondary,
          style: TextStyle(
            fontSize: fontSize,
            color: context.appColors.onPrimary,
          ),
          textAlignVertical: TextAlignVertical.center,
          onChanged: onChanged,
          keyboardType: inputType,
          maxLines: maxLines ?? 1,
          validator: validator,
          decoration: _decoration(context),
          inputFormatters: inputFormatters,
        ),
      ),
    );
  }

  InputDecoration _decoration(BuildContext context) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppForwardArrow(),
          const HorizontalSpacingWidget(Sizes.p4),
          AppText(
            text: label.capEach,
            style: context.textThemeExtension.bodyMedium.copyWith(
              color: context.appColors.onPrimary,
            ),
          ),
        ],
      ),
      floatingLabelStyle: context.textThemeExtension.bodyMedium
          .copyWith(color: context.appColors.onPrimary),
      prefixIcon: prefixIcon,
      // prefixIconConstraints: const BoxConstraints(minWidth: 35, maxWidth: 40),
      suffixIcon: suffixIcon,
      isDense: isDense,
      contentPadding: contentPadding ?? const EdgeInsets.only(bottom: 3),
      errorMaxLines: 2,
      errorBorder: const UnderlineInputBorder(),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: context.appColors.secondary),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: context.appColors.secondary),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: context.appColors.secondary),
      ),
    );
  }
}
