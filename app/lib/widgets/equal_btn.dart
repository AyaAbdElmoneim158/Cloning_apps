import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/calculator_controller.dart';
import '../utils/colors.dart';

class EqualBtn extends StatelessWidget {
  const EqualBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorController>(context, listen: false)
          .onTapBtn("="),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
