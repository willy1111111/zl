import 'package:get/get.dart';

import '../../../../core/app_export.dart';

/// This class is used in the [achievement_rewards_screen] screen with GetX.

class AchievementRewardsModel {
  // Observable variables for reactive state management
  Rx<String> progressText = "You need to invite 9 qualified users to Get: ".obs;
  Rx<String> rewardAmount = "₱388.00".obs;
  Rx<String> progressValue = "40/100".obs;
  Rx<String> noExpirationText = "No expiration".obs;
  Rx<String> rulesText = "Rules".obs;
  Rx<double> progressPercentage = 40.0.obs;

  // Simple constructor with no parameters
  AchievementRewardsModel();
}
