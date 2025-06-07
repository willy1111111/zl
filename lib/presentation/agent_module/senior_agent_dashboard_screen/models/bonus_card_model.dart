import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class BonusCardModel {
  Rx<String>? title;
  Rx<String>? amount;
  List<Color>? gradientColors;
  Rx<String>? iconPath;
  double? borderRadius;
  Rx<bool>? isTextCentered;
  Rx<bool>? isFullWidth;

  BonusCardModel({
    this.title,
    this.amount,
    this.gradientColors,
    this.iconPath,
    this.borderRadius,
    this.isTextCentered,
    this.isFullWidth,
  });
}
