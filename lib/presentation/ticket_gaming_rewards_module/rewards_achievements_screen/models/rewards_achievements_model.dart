import 'package:get/get.dart';
import '../../../core/app_export.dart';

class RewardsAchievementsModel {
  Rx<String>? backgroundImage;
  Rx<bool>? isLoaded;
  Rx<int>? totalAchievements;
  Rx<int>? unlockedAchievements;

  RewardsAchievementsModel({
    this.backgroundImage,
    this.isLoaded,
    this.totalAchievements,
    this.unlockedAchievements,
  });
}

class AchievementItemModel {
  Rx<String>? id;
  Rx<String>? imagePath;
  Rx<String>? title;
  Rx<bool>? isUnlocked;
  Rx<String>? description;
  Rx<String>? rewardType;

  AchievementItemModel({
    this.id,
    this.imagePath,
    this.title,
    this.isUnlocked,
    this.description,
    this.rewardType,
  });
}
