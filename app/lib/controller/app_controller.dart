import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  RxString gender = "male".obs;
  RxDouble height = 160.0.obs;
  RxInt width = 70.obs;
  RxInt age = 23.obs;

  RxString bmi = "".obs;
  RxString bmiStatus = "".obs;
  RxDouble bmiTemp = 0.0.obs;
  Rx<Color> colorStatus = const Color(0xff246AFE).obs;

  void changeGender(String value) => gender.value = value;
  void calculateBmi() {
    var meterHeight = height / 100;
    bmiTemp.value = width / (meterHeight * meterHeight);
    bmi.value = bmiTemp.toStringAsFixed(1);
    bmiTemp.value = double.parse(bmi.value);
    findStatus();
  }

  void findStatus() {
    if (bmiTemp.value < 18.5) {
      bmiStatus.value = "UnderWeight";
      colorStatus.value = const Color(0xffFFB800);
    }
    if (bmiTemp.value > 18.5 && bmiTemp.value < 24.9) {
      bmiStatus.value = "Normal";
      colorStatus.value = const Color(0xff00CA39);
    }
    if (bmiTemp.value > 25.0 && bmiTemp.value < 29.9) {
      bmiStatus.value = "OverWeight";
      colorStatus.value = const Color(0xffFF5858);
    }
    if (bmiTemp.value > 30.0 && bmiTemp.value < 34.9) {
      bmiStatus.value = "OBESE";
      colorStatus.value = const Color(0xffFF0000);
    }
    if (bmiTemp.value > 35.0) {
      bmiStatus.value = "Extremely OBESE";
      colorStatus.value = const Color(0xff000000);
    }
  }
}
