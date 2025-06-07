import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class RewardCardModel {
  Rx<String>? title;
  Rx<String>? amount;
  Rx<Color>? titleColor;
  Rx<Color>? amountColor;
  Rx<double>? width;
  Rx<double>? height;

  RewardCardModel({
    this.title,
    this.amount,
    this.titleColor,
    this.amountColor,
    this.width,
    this.height,
  });
}
