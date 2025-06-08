import 'package:get/get.dart';
import '../../../core/app_export.dart';

enum AchievementStatus { claimed, claimable, invite }

class AchievementItemModel {
  Rx<String>? title;
  Rx<String>? currentProgress;
  Rx<String>? maxProgress;
  Rx<String>? rewardAmount;
  Rx<AchievementStatus>? status;

  AchievementItemModel({
    this.title,
    this.currentProgress,
    this.maxProgress,
    this.rewardAmount,
    this.status,
  });
}
