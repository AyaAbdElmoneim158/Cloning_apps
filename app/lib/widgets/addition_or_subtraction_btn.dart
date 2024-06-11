import 'package:flutter/material.dart';
import '../utils/Colors.dart';

class AdditionOrSubtractionBtn extends StatelessWidget {
  const AdditionOrSubtractionBtn({
    super.key,
    this.onTap,
    this.icon,
  });
  final void Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(21),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryColor,
        ),
        child: Icon(
          icon ?? Icons.add,
          color: AppColors.whiteColor,
          size: 14,
        ),
      ),
    );
  }
}
