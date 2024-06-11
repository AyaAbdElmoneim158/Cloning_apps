import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/styles.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.label,
    this.labelColor = AppColors.whiteColor,
    this.backgroundColor,
    this.onPressed,
  });
  final String label;
  final Color labelColor;
  final Color? backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: AppStyles.elevatedButton(
            backgroundColor: backgroundColor ?? AppColors.primaryColor),
        child: Text(
          label,
          style: AppStyles.font15WhiteMedium!.copyWith(color: labelColor),
        ),
      ),
    );
  }
}
