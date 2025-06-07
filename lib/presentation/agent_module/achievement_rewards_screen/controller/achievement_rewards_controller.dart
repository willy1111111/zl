import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/achievement_item_model.dart';
import '../models/bonus_card_model.dart';

class AchievementRewardsController extends GetxController {
  // Observable variables
  RxList<BonusCardModel> bonusCards = <BonusCardModel>[].obs;
  RxList<AchievementItemModel> achievementItems = <AchievementItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeBonusCards();
    _initializeAchievementItems();
  }

  void _initializeBonusCards() {
    bonusCards.value = [
      BonusCardModel(
          title: 'Qualified Bonus'.obs, amount: '+ ₱108'.obs, width: 114.obs),
      BonusCardModel(
          title: 'Achievement Reward'.obs,
          amount: '+ ₱88888'.obs,
          width: 114.obs),
      BonusCardModel(
          title: 'Deposit Rebate'.obs, amount: '5%'.obs, width: 75.obs),
      BonusCardModel(
          title: 'Betting Rebate'.obs, amount: '2.03%'.obs, width: 75.obs),
      BonusCardModel(
          title: 'Agent Ranking'.obs, amount: '+ ₱888'.obs, width: 75.obs),
    ];
  }

  void _initializeAchievementItems() {
    achievementItems.value = [
      AchievementItemModel(
          iconPath: ImageConstant.imgJb.obs,
          title: 'Invite over 1 qualified users in total'.obs,
          rewardAmount: '₱88.00'.obs,
          currentProgress: '5'.obs,
          totalRequired: '5'.obs,
          buttonText: 'Claimed'.obs,
          buttonColor: Color(0xFF737373).obs,
          textColor: appTheme.whiteCustom.obs,
          isClaimed: true.obs),
      AchievementItemModel(
          iconPath: ImageConstant.imgJb.obs,
          title: 'Invite over 10 qualified users'.obs,
          rewardAmount: '₱188.00'.obs,
          currentProgress: '10'.obs,
          totalRequired: '10'.obs,
          buttonText: 'claim'.obs,
          buttonColor: Color(0xFFFFC600).obs,
          textColor: appTheme.blackCustom.obs,
          isClaimed: false.obs),
      AchievementItemModel(
          iconPath: ImageConstant.imgJb.obs,
          title: 'Invite over 20 qualified users'.obs,
          rewardAmount: '₱388.00'.obs,
          currentProgress: '12'.obs,
          totalRequired: '20'.obs,
          buttonText: 'invite'.obs,
          buttonColor: Color(0xFF85D420).obs,
          textColor: appTheme.whiteCustom.obs,
          isClaimed: false.obs),
      AchievementItemModel(
          iconPath: ImageConstant.imgJb.obs,
          title: 'Invite over 50 qualified users'.obs,
          rewardAmount: '₱888.00'.obs,
          currentProgress: '5'.obs,
          totalRequired: '50'.obs,
          buttonText: 'invite'.obs,
          buttonColor: Color(0xFF85D420).obs,
          textColor: appTheme.whiteCustom.obs,
          isClaimed: false.obs),
      AchievementItemModel(
          iconPath: ImageConstant.imgJb.obs,
          title: 'Invite over 100 qualified users'.obs,
          rewardAmount: '₱1888.00'.obs,
          currentProgress: '5'.obs,
          totalRequired: '100'.obs,
          buttonText: 'invite'.obs,
          buttonColor: Color(0xFF85D420).obs,
          textColor: appTheme.whiteCustom.obs,
          isClaimed: false.obs),
      AchievementItemModel(
          iconPath: ImageConstant.imgJb.obs,
          title: 'Invite over 200 qualified users'.obs,
          rewardAmount: '₱2888.00'.obs,
          currentProgress: '5'.obs,
          totalRequired: '200'.obs,
          buttonText: 'invite'.obs,
          buttonColor: Color(0xFF85D420).obs,
          textColor: appTheme.whiteCustom.obs,
          isClaimed: false.obs),
      AchievementItemModel(
          iconPath: ImageConstant.imgJb.obs,
          title: 'Invite over 500 qualified users'.obs,
          rewardAmount: '₱8888.00'.obs,
          currentProgress: '5'.obs,
          totalRequired: '500'.obs,
          buttonText: 'invite'.obs,
          buttonColor: Color(0xFF85D420).obs,
          textColor: appTheme.whiteCustom.obs,
          isClaimed: false.obs),
    ];
  }

  void onAchievementButtonTap(int index) {
    final item = achievementItems[index];

    if (item.buttonText!.value == 'claim') {
      // Handle claim logic
      item.buttonText!.value = 'Claimed';
      item.buttonColor!.value = appTheme.colorFF7373;
      item.textColor!.value = appTheme.whiteCustom;
      item.isClaimed!.value = true;

      // Show success message
      Get.snackbar('Success', 'Reward claimed successfully!',
          backgroundColor: appTheme.colorFF85D4,
          colorText: appTheme.whiteCustom);
    } else if (item.buttonText!.value == 'invite') {
      // Navigate to invite screen
      Get.toNamed(AppRoutes.masterAgentDashboardScreen);
    }
  }
}
