import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [GameRewardClaimScreen] screen with GetX.

class GameRewardClaimModel {
  // Observable variables for reactive state management
  Rx<String>? rewardAmount = '₱57.99'.obs;
  Rx<String>? privilegesTitle = 'Activate privileges'.obs;
  Rx<String>? privilegesDescription =
      '1.Congratulations on activating the [Recharge Promotion]you can enjoy up to 30% bonus.\n2.Congratulations on activating the [Newbie RewardPrivilege], you can receive up to P1446 bonus'
          .obs;

  // Simple constructor with no parameters
  GameRewardClaimModel();
}
