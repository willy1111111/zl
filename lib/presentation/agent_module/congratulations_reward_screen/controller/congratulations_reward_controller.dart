import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/achievement_item_model.dart';
import '../models/congratulations_reward_model.dart';

class CongratulationsRewardController extends GetxController {
  Rx<CongratulationsRewardModel> congratulationsRewardModelObj =
      CongratulationsRewardModel().obs;
  RxList<AchievementItemModel> achievementList = <AchievementItemModel>[].obs;
  RxBool showCongratulationsModal = true.obs;

  @override
  void onInit() {
    super.onInit();
    initializeAchievementList();
  }

  void initializeAchievementList() {
    achievementList.value = [
      AchievementItemModel(
        title: 'Invite over 5 qualified users today'.obs,
        currentProgress: '5'.obs,
        totalProgress: '5'.obs,
        rewardAmount: '+ ₱88.00'.obs,
        buttonText: 'Claimed'.obs,
        buttonColor: Color(0xFF737373).obs,
        textColor: Color(0xFF808994).obs,
        progressColor: Color(0xFF808994).obs,
        isClaimed: true.obs,
      ),
      AchievementItemModel(
        title: 'Invite over 10 qualified users today'.obs,
        currentProgress: '10'.obs,
        totalProgress: '10'.obs,
        rewardAmount: '+ ₱188.00'.obs,
        buttonText: 'claim'.obs,
        buttonColor: Color(0xFFFFC600).obs,
        textColor: appTheme.whiteCustom.obs,
        progressColor: Color(0xFF85D420).obs,
        isClaimed: false.obs,
      ),
      AchievementItemModel(
        title: 'Invite over 20 qualified users today'.obs,
        currentProgress: '12'.obs,
        totalProgress: '20'.obs,
        rewardAmount: '+ ₱388.00'.obs,
        buttonText: 'invite'.obs,
        buttonColor: Color(0xFF85D420).obs,
        textColor: appTheme.whiteCustom.obs,
        progressColor: Color(0xFF85D420).obs,
        isClaimed: false.obs,
      ),
    ];
  }

  void onClaimTap(int index) {
    if (!(achievementList[index].isClaimed?.value ?? true)) {
      achievementList[index].isClaimed?.value = true;
      achievementList[index].buttonText?.value = 'Claimed';
      achievementList[index].buttonColor?.value = appTheme.colorFF7373;
      achievementList[index].textColor?.value = appTheme.colorFF8089;
      achievementList[index].progressColor?.value = appTheme.colorFF8089;
      showCongratulationsModal.value = true;
    }
  }

  void onInviteTap(int index) {
    Get.toNamed(AppRoutes.referralRewardsScreen);
  }

  void onConfirmTap() {
    showCongratulationsModal.value = false;
  }
}
