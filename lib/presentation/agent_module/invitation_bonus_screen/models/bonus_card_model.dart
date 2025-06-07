import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class BonusCardModel {
  Rx<String>? title;
  Rx<String>? amount;
  Rx<Color>? titleColor;
  Rx<Color>? amountColor;

  BonusCardModel({
    this.title,
    this.amount,
    this.titleColor,
    this.amountColor,
  });
}
