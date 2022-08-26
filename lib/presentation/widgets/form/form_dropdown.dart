import 'package:flutter/material.dart';

import 'package:qz_ui/presentation/style/app_edge_insets.dart';
import 'package:qz_ui/presentation/style/app_text_styles.dart';

class FormDropdown extends StatelessWidget {
  final String? selectedValue;
  final List<DropdownMenuItem<String>> items;
  final String hint;
  final void Function(String?) onChanged;
  final Color? color;

  const FormDropdown({
    Key? key,
    required this.selectedValue,
    required this.items,
    required this.hint,
    required this.onChanged,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey[500]!,
        ),
      ),
      padding: AppEdgeInsets.sdAll,
      child: DropdownButton<String>(
        isExpanded: true,
        value: selectedValue,
        hint: Padding(
          padding: AppEdgeInsets.vsd,
          child: Text(
            hint,
            style: AppTextStyles.title.copyWith(fontSize: 14),
          ),
        ),
        style: AppTextStyles.title.copyWith(fontSize: 14),
        underline: const SizedBox(),
        icon: Icon(
          Icons.expand_more_rounded,
          color: color ?? Colors.black,
        ),
        onChanged: onChanged,
        items: items,
      ),
    );
  }
}
