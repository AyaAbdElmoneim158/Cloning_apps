import 'package:flutter/material.dart';
import 'colors.dart';

class AppStyles {
  static ButtonStyle elevatedButton({
    Color? backgroundColor,
  }) =>
      ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.all(25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );

  static EdgeInsetsGeometry defaultPadding = const EdgeInsets.only(
    top: 32,
    left: 16,
    right: 16,
    bottom: 16,
  );

  static Decoration? containerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: AppColors.containerBoxColor,
  );

  static Decoration? containerInfoDecoration = BoxDecoration(
    color: AppColors.containerBoxColor,
    borderRadius: BorderRadius.circular(10),
  );
//!  TextStyle - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  static TextStyle? font15WhiteMedium = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteColor,
  );

  static TextStyle? font15WhiteRegular = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteColor,
  );

  static TextStyle? font24WhiteSemiBold = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );
  static TextStyle? font15GrayMedium = const TextStyle(
    color: AppColors.labelColor,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );
  static TextStyle? font64WhiteSemiBold = const TextStyle(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w600,
    fontSize: 64,
  );

  static TextStyle? font30BlueBold = const TextStyle(
    color: AppColors.primaryColor,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static TextStyle? font60BlueBold = const TextStyle(
    color: AppColors.primaryColor,
    fontSize: 60,
    fontWeight: FontWeight.bold,
  );
}
