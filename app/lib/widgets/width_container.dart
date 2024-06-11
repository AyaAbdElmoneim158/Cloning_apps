import 'package:app/utils/styles.dart';
import 'package:app/widgets/addition_or_subtraction_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/app_controller.dart';

class WidthContainer extends StatelessWidget {
  const WidthContainer({
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
            Text("Width", style: AppStyles.font15GrayMedium),
            Obx(
              () => Text(
                bmiController.width.value.toString(),
                style: AppStyles.font64WhiteSemiBold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AdditionOrSubtractionBtn(
                  icon: Icons.minimize,
                  onTap: () => bmiController.width.value--,
                ),
                AdditionOrSubtractionBtn(
                  onTap: () => bmiController.width.value++,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
