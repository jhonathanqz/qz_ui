import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:qz_ui/presentation/style/app_colors.dart';

class OmniTextField extends StatelessWidget {
  final String? errorText;
  final Widget? suffix;
  final Widget? icon;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final TextStyle? hintStyle;
  final String? hintText;
  final String? labelText;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final int? inputMaxLength;
  final TextInputType keyboardType;

  const OmniTextField({
    Key? key,
    this.errorText,
    this.suffix,
    this.icon,
    this.onChanged,
    this.obscureText = false,
    this.hintStyle,
    this.hintText,
    required this.controller,
    this.inputFormatters,
    this.inputMaxLength,
    this.keyboardType = TextInputType.text,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 32.0),
        child: TextField(
          keyboardType: keyboardType,
          maxLength: inputMaxLength,
          inputFormatters: inputFormatters,
          textInputAction: TextInputAction.next,
          autocorrect: false,
          textAlign: TextAlign.start,
          obscureText: obscureText,
          onChanged: onChanged,
          controller: controller,
          decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.grey),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.black),
            ),
            hintText: hintText,
            labelText: labelText,
            errorText: errorText,
            hintStyle: hintStyle,
            suffix: suffix,
            suffixIcon: icon,
            suffixIconConstraints:
                const BoxConstraints(maxHeight: 90, maxWidth: 80),
          ),
        ),
      ),
    );
  }
}
