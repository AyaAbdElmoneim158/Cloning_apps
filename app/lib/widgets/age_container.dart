import 'package:flutter/material.dart';
import '../utils/styles.dart';
import 'addition_or_subtraction_btn.dart';
import 'package:get/get.dart';
import '../controller/app_controller.dart';

class AgeContainer extends StatelessWidget {
  const AgeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppController bmiController = Get.put(AppController());

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
            Obx(
              () => Text(
                bmiController.age.value.toString(),
                style: AppStyles.font64WhiteSemiBold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AdditionOrSubtractionBtn(
                  icon: Icons.minimize,
                  onTap: () => bmiController.age.value--,
                ),
                AdditionOrSubtractionBtn(
                  onTap: () => bmiController.age.value++,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
