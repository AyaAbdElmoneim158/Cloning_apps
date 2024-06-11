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
}
