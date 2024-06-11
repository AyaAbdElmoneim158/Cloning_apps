import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../utils/Colors.dart';
import '../utils/styles.dart';
import '../widgets/gender_btn.dart';
import 'package:get/get.dart';
import '../controller/app_controller.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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
              Text(
                "Your BMI is",
                style: AppStyles.font24WhiteSemiBold,
              ),
              const SizedBox(height: 32),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircularPercentIndicator(
                      animationDuration: 1000,
                      footer: Text(
                        bmiController.bmiStatus.value,
                        style: AppStyles.font30BlueBold!.copyWith(
                          color: bmiController.colorStatus.value,
                        ),
                      ),
                      radius: 130,
                      lineWidth: 30,
                      animation: true,
                      circularStrokeCap: CircularStrokeCap.round,
                      percent: bmiController.bmiTemp.value / 100,
                      center: Text(
                        '${bmiController.bmi.value}%',
                        style: AppStyles.font60BlueBold!.copyWith(
                          color: bmiController.colorStatus.value,
                        ),
                      ),
                      progressColor: bmiController.colorStatus.value,
                      backgroundColor:
                          bmiController.colorStatus.value.withOpacity(0.2),
                    ),
                    Container(
                      decoration: AppStyles.containerInfoDecoration,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                          "Your BMI is 20.7, indicating your weight is in the Normal category for adults of your height.  For your height, a normal weight range wouldbe from 53.5 to 72 kilograms.Maintaining a healthy weight may reduce the risk of chronic diseases associated with overweight and obesity."),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              CustomBtn(
                label: "Find Out More",
                onPressed: () {
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
