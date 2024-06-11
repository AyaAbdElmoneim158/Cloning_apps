import 'package:app/utils/Colors.dart';
import 'package:app/widgets/gender_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/app_controller.dart';

class GenderBtns extends StatelessWidget {
  const GenderBtns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppController bmiController = Get.put(AppController());

    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CustomBtn(
              label: "Male",
              labelColor: bmiController.gender.value == "male"
                  ? AppColors.whiteColor
                  : AppColors.primaryColor,
              backgroundColor: bmiController.gender.value == "male"
                  ? AppColors.primaryColor
                  : AppColors.whiteColor,
              onPressed: () => bmiController.changeGender("male"),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: CustomBtn(
              label: "Female",
              labelColor: bmiController.gender.value == "female"
                  ? AppColors.whiteColor
                  : AppColors.primaryColor,
              backgroundColor: bmiController.gender.value == "female"
                  ? AppColors.primaryColor
                  : AppColors.whiteColor,
              onPressed: () => bmiController.changeGender("female"),
            ),
          ),
        ],
      ),
    );
  }
}
