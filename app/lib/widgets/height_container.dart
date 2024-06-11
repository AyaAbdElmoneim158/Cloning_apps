import 'package:app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../utils/Colors.dart';

class HeightContainer extends StatelessWidget {
  const HeightContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              child: SfSlider.vertical(
                min: 50,
                max: 250,
                value: 160,
                interval: 25,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 5,
                activeColor: AppColors.primaryColor,
                inactiveColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.2),
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
