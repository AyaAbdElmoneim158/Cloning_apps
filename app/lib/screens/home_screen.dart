import 'package:app/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/app_controller.dart';
import '../utils/Colors.dart';
import '../utils/styles.dart';
import '../widgets/age_container.dart';
import '../widgets/gender_btn.dart';
import '../widgets/gender_btns.dart';
import '../widgets/height_container.dart';
import '../widgets/welcome_text.dart';
import '../widgets/width_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppController bmiController = Get.put(AppController());

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Padding(
          padding: AppStyles.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeText(),
              const SizedBox(height: 32),
              const GenderBtns(),
              const SizedBox(height: 32),
              const Expanded(
                child: Row(
                  children: [
                    HeightContainer(),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        children: [
                          WidthContainer(),
                          SizedBox(height: 16),
                          AgeContainer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 32),
              CustomBtn(
                label: "Lets Go",
                onPressed: () {
                  bmiController.calculateBmi();
                  Get.to(const ResultScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
