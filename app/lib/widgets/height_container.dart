import 'package:app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../utils/Colors.dart';
import 'package:get/get.dart';
import '../controller/app_controller.dart';

class HeightContainer extends StatelessWidget {
  const HeightContainer({
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Height", style: AppStyles.font15GrayMedium),
            const SizedBox(height: 16),
            Expanded(
              child: Obx(
                () => SfSlider.vertical(
                  min: 50,
                  max: 250,
                  value: bmiController.height.value,
                  interval: 25,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 5,
                  activeColor: AppColors.primaryColor,
                  inactiveColor:
                      Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  onChanged: (value) {
                    bmiController.height.value = value;
                    debugPrint(value);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
