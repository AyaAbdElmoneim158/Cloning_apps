import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorController extends ChangeNotifier {
  final fieldController = TextEditingController();

  void onTapBtn(String value) {
    String str = fieldController.text;

    switch (value) {
      case "C":
        fieldController.clear();
        break;
      case "AC":
        fieldController.text = str.substring(0, str.length - 1);
        break;
      case "X":
        fieldController.text += "*";
        break;
      case "=":
        calculate();
        break;
      default:
        fieldController.text += value;
    }
    fieldController.selection = TextSelection.fromPosition(
      TextPosition(offset: fieldController.text.length),
    );
  }

  calculate() {
    String text = fieldController.text;
    fieldController.text = text.interpret().toString();
  }

  @override
  void dispose() {
    super.dispose();
    fieldController.dispose();
  }
}
