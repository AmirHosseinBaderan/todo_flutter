import 'package:flutter/material.dart';

class InputOutline extends StatelessWidget {
  final String hint;
  final String lable;
  final TextInputType inputTtype;
  final TextEditingController controller;
  final String errorText;
  final int maxLines;
  final bool isRequired;
  final Widget? prefixIcon;

  const InputOutline(
      {super.key,
      required this.controller,
      required this.hint,
      required this.lable,
      required this.maxLines,
      required this.isRequired,
      this.prefixIcon,
      this.errorText = '',
      this.inputTtype = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputTtype,
      validator: (value) {
        if (isRequired) {
          return value == null || value.isEmpty ? errorText : null;
        }
        return null;
      },
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hint,
          labelText: lable,
          prefixIcon: prefixIcon,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(10),
          ))),
    );
  }
}
