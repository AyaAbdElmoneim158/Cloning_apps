import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
  });
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      showCursor: true,
      autofocus: true,
      cursorColor: AppColors.secondaryColor,
      controller: controller,
      style: const TextStyle(fontSize: 32),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        disabledBorder: outlineInputBorder,
        fillColor: AppColors.primaryColor,
        filled: true,
        hintText: "Enter expression",
        hintStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
