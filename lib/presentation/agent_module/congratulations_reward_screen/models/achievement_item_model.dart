import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class AchievementItemModel {
  Rx<String>? title;
  Rx<String>? currentProgress;
  Rx<String>? totalProgress;
  Rx<String>? rewardAmount;
  Rx<String>? buttonText;
  Rx<Color>? buttonColor;
  Rx<Color>? textColor;
  Rx<Color>? progressColor;
  Rx<bool>? isClaimed;

  AchievementItemModel({
    this.title,
    this.currentProgress,
    this.totalProgress,
    this.rewardAmount,
    this.buttonText,
    this.buttonColor,
    this.textColor,
    this.progressColor,
    this.isClaimed,
  });
}
