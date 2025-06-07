import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class IncomeCardModel {
  Rx<String>? title;
  Rx<String>? amount;
  Rx<List<Color>>? gradientColors;
  Rx<String>? iconPath;
  Rx<double>? borderRadius;
  Rx<bool>? isTextCentered;

  IncomeCardModel({
    this.title,
    this.amount,
    this.gradientColors,
    this.iconPath,
    this.borderRadius,
    this.isTextCentered,
  });
}
