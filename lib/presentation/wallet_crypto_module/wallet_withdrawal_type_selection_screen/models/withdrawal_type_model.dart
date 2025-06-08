import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class WithdrawalTypeModel {
  Rx<String>? id;
  Rx<String>? title;
  Rx<String>? iconPath;
  Rx<String>? arrowIconPath;
  Rx<String>? addIconPath;
  Rx<List<Color>>? gradientColors;
  Rx<Color>? addButtonColor;

  WithdrawalTypeModel({
    this.id,
    this.title,
    this.iconPath,
    this.arrowIconPath,
    this.addIconPath,
    this.gradientColors,
    this.addButtonColor,
  });
}
