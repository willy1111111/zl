import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class BonusCardModel {
  Rx<String>? title;
  Rx<String>? subtitle;
  Rx<String>? amount;
  Rx<String>? iconPath;
  Rx<Color>? borderColor;
  Rx<Color>? shadowColor;
  Rx<Color>? iconBorderColor;
  Rx<Color>? buttonColor;
  Rx<Color>? buttonTextColor;
  Rx<String>? buttonText;
  Rx<bool>? isClaimed;

  BonusCardModel({
    this.title,
    this.subtitle,
    this.amount,
    this.iconPath,
    this.borderColor,
    this.shadowColor,
    this.iconBorderColor,
    this.buttonColor,
    this.buttonTextColor,
    this.buttonText,
    this.isClaimed,
  });
}
