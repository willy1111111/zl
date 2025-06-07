import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class BonusCardModel {
  Rx<String>? title;
  Rx<String>? amount;
  Rx<List<Color>>? gradientColors;
  Rx<String>? iconPath;
  Rx<bool>? isCenter;
  Rx<double>? borderRadius;

  BonusCardModel({
    this.title,
    this.amount,
    this.gradientColors,
    this.iconPath,
    this.isCenter,
    this.borderRadius,
  });
}
