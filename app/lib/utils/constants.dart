import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/calculator_btn.dart';

OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(16),
  ),
  borderSide: BorderSide(color: Colors.transparent),
);

BoxDecoration boxDecoration = const BoxDecoration(
  color: AppColors.primaryColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(32),
    topRight: Radius.circular(32),
  ),
);

List<Widget> buttons = [
  const CalculatorBtn(
    label: "C",
    labelColor: AppColors.secondaryColor,
  ),
  const CalculatorBtn(
    label: "/",
    labelColor: AppColors.secondaryColor,
  ),
  const CalculatorBtn(
    label: "X",
    labelColor: AppColors.secondaryColor,
  ),
  const CalculatorBtn(
    label: "AC",
    labelColor: AppColors.secondaryColor,
  ),
  const CalculatorBtn(
    label: "7",
  ),
  const CalculatorBtn(
    label: "8",
  ),
  const CalculatorBtn(
    label: "9",
  ),
  const CalculatorBtn(
    label: "+",
    labelColor: AppColors.secondaryColor,
  ),
  const CalculatorBtn(
    label: "4",
  ),
  const CalculatorBtn(
    label: "5",
  ),
  const CalculatorBtn(
    label: "6",
  ),
  const CalculatorBtn(
    label: "-",
    labelColor: AppColors.secondaryColor,
  ),
  const CalculatorBtn(
    label: "1",
  ),
  const CalculatorBtn(
    label: "2",
  ),
  const CalculatorBtn(
    label: "3",
  ),
  const CalculatorBtn(
    label: "%",
  ),
  const CalculatorBtn(
    label: "0",
  ),
  const CalculatorBtn(
    label: ".",
  ),
];
