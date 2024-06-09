import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../controller/calculator_controller.dart';
import '../widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

class TopField extends StatelessWidget {
  const TopField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorController>(
      builder: (context, provider, child) => Expanded(
        flex: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: CustomTextField(
            controller: provider.fieldController,
          ),
        ),
      ),
    );
  }
}
