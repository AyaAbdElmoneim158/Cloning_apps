import 'package:app/utils/Colors.dart';
import 'package:app/widgets/gender_btn.dart';
import 'package:flutter/material.dart';

class GenderBtns extends StatelessWidget {
  const GenderBtns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: CustomBtn(label: "Male")),
        SizedBox(width: 16),
        Expanded(
          child: CustomBtn(
            label: "Female",
            labelColor: AppColors.primaryColor,
            backgroundColor: AppColors.whiteColor,
          ),
        ),
      ],
    );
  }
}
