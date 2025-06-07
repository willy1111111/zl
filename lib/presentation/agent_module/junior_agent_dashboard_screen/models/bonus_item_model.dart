import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class BonusItemModel {
  Rx<String>? title;
  Rx<String>? amount;
  Rx<List<Color>>? gradientColors;
  Rx<double>? borderRadius;
  Rx<String>? titleAlignment;
  Rx<String>? amountAlignment;

  BonusItemModel({
    this.title,
    this.amount,
    this.gradientColors,
    this.borderRadius,
    this.titleAlignment,
    this.amountAlignment,
  });
}
