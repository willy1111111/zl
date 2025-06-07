import 'package:get/get.dart';

import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [achievement_item_widget] component with GetX.

class AchievementItemModel {
  // Observable variables for reactive state management
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<String>? rewardAmount;
  Rx<String>? currentProgress;
  Rx<String>? totalRequired;
  Rx<String>? buttonText;
  Rx<Color>? buttonColor;
  Rx<Color>? textColor;
  Rx<bool>? isClaimed;

  AchievementItemModel({
    this.iconPath,
    this.title,
    this.rewardAmount,
    this.currentProgress,
    this.totalRequired,
    this.buttonText,
    this.buttonColor,
    this.textColor,
    this.isClaimed,
  });
}
