import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class AchievementDashboardModel {
  Rx<String>? title;
  Rx<int>? currentProgress;
  Rx<int>? targetProgress;
  Rx<String>? rewardAmount;
  Rx<String>? buttonText;
  Rx<int>? buttonColor;
  Rx<bool>? isCompleted;
  Rx<bool>? isClaimed;
  Rx<int>? textColor;

  AchievementDashboardModel({
    this.title,
    this.currentProgress,
    this.targetProgress,
    this.rewardAmount,
    this.buttonText,
    this.buttonColor,
    this.isCompleted,
    this.isClaimed,
    this.textColor,
  });
}
