import 'package:get/get.dart';

import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';

class AchievementModel {
  Rx<String>? title;
  Rx<int>? currentProgress;
  Rx<int>? targetProgress;
  Rx<String>? rewardAmount;
  Rx<String>? buttonText;
  Rx<Color>? buttonColor;
  Rx<Color>? textColor;
  Rx<bool>? isCompleted;
  Rx<bool>? isClaimed;

  AchievementModel({
    this.title,
    this.currentProgress,
    this.targetProgress,
    this.rewardAmount,
    this.buttonText,
    this.buttonColor,
    this.textColor,
    this.isCompleted,
    this.isClaimed,
  });
}
