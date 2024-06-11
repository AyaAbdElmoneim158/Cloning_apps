import 'package:flutter/material.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Padding(
          padding: AppStyles.defaultPadding,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeText(),
              SizedBox(height: 32),
              GenderBtns(),
              SizedBox(height: 32),
              Expanded(
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
              SizedBox(height: 32),
              CustomBtn(
                label: "Lets Go",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
