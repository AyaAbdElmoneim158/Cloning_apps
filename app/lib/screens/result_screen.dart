import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../utils/Colors.dart';
import '../utils/styles.dart';
import '../widgets/gender_btn.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                      footer:
                          Text("Under width", style: AppStyles.font30BlueBold),
                      radius: 130,
                      lineWidth: 30,
                      animation: true,
                      circularStrokeCap: CircularStrokeCap.round,
                      percent: 65 / 100,
                      center: Text("105", style: AppStyles.font60BlueBold),
                      progressColor: AppColors.primaryColor,
                      backgroundColor: AppColors.primaryColor.withOpacity(0.2),
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
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
