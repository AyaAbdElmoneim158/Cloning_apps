import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class CalculatorBtn extends StatelessWidget {
  const CalculatorBtn({
    super.key,
    required this.label,
    this.labelColor = Colors.white,
  });
  final String label;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Material(
        elevation: 3,
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 36,
          backgroundColor: AppColors.secondary2Color,
          child: Text(
            label,
            style: TextStyle(
              color: labelColor,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
