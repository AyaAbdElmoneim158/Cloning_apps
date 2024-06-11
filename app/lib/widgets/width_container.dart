import 'package:app/utils/styles.dart';
import 'package:app/widgets/addition_or_subtraction_btn.dart';
import 'package:flutter/material.dart';

class WidthContainer extends StatelessWidget {
  const WidthContainer({
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
            Text("Width", style: AppStyles.font15GrayMedium),
            Text("70", style: AppStyles.font64WhiteSemiBold),
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
