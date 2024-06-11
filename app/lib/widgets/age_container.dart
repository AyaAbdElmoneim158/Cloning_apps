import 'package:flutter/material.dart';
import '../utils/styles.dart';
import 'addition_or_subtraction_btn.dart';

class AgeContainer extends StatelessWidget {
  const AgeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: AppStyles.containerDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Age", style: AppStyles.font15GrayMedium),
            Text("23", style: AppStyles.font64WhiteSemiBold),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AdditionOrSubtractionBtn(icon: Icons.minimize),
                AdditionOrSubtractionBtn(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
