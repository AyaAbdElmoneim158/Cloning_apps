import 'package:flutter/material.dart';

import '../utils/styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome 😊",
          style: AppStyles.font15WhiteRegular,
        ),
        Text(
          "BMI Calculator",
          style: AppStyles.font24WhiteSemiBold,
        )
      ],
    );
  }
}
