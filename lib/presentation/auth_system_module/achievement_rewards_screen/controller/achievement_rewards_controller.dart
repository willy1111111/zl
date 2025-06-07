import '../models/achievement_rewards_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';

class AchievementRewardsController extends GetxController {
  RxList<AchievementModel> achievements = <AchievementModel>[].obs;
  RxBool isShareModalVisible = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializeAchievements();
  }

  void initializeAchievements() {
    achievements.value = [
      AchievementModel(
        title: 'Invite over 5 qualified users today'.obs,
        currentProgress: 5.obs,
        targetProgress: 5.obs,
        rewardAmount: '₱88.00'.obs,
        buttonText: 'Claimed'.obs,
        buttonColor: Color(0xFF737373).obs,
        textColor: appTheme.blackCustom.obs,
        isCompleted: true.obs,
        isClaimed: true.obs,
      ),
      AchievementModel(
        title: 'Invite over 10 qualified users today'.obs,
        currentProgress: 10.obs,
        targetProgress: 10.obs,
        rewardAmount: '₱188.00'.obs,
        buttonText: 'claim'.obs,
        buttonColor: Color(0xFFFFC600).obs,
        textColor: appTheme.blackCustom.obs,
        isCompleted: true.obs,
        isClaimed: false.obs,
      ),
      AchievementModel(
        title: 'Invite over 20 qualified users today'.obs,
        currentProgress: 12.obs,
        targetProgress: 20.obs,
        rewardAmount: '₱388.00'.obs,
        buttonText: 'invite'.obs,
        buttonColor: Color(0xFF85D420).obs,
        textColor: appTheme.blackCustom.obs,
        isCompleted: false.obs,
        isClaimed: false.obs,
      ),
      AchievementModel(
        title: 'Invite over 50 qualified users today'.obs,
        currentProgress: 5.obs,
        targetProgress: 50.obs,
        rewardAmount: '₱888.00'.obs,
        buttonText: 'invite'.obs,
        buttonColor: Color(0xFF85D420).obs,
        textColor: appTheme.blackCustom.obs,
        isCompleted: false.obs,
        isClaimed: false.obs,
      ),
      AchievementModel(
        title: 'Invite over 100 qualified users today'.obs,
        currentProgress: 5.obs,
        targetProgress: 100.obs,
        rewardAmount: '₱1888.00'.obs,
        buttonText: 'invite'.obs,
        buttonColor: Color(0xFF85D420).obs,
        textColor: appTheme.blackCustom.obs,
        isCompleted: false.obs,
        isClaimed: false.obs,
      ),
      AchievementModel(
        title: 'Invite over 200 qualified users today'.obs,
        currentProgress: 5.obs,
        targetProgress: 200.obs,
        rewardAmount: '₱2888.00'.obs,
        buttonText: 'invite'.obs,
        buttonColor: Color(0xFF85D420).obs,
        textColor: appTheme.blackCustom.obs,
        isCompleted: false.obs,
        isClaimed: false.obs,
      ),
      AchievementModel(
        title: 'Invite over 500 qualified users today'.obs,
        currentProgress: 5.obs,
        targetProgress: 500.obs,
        rewardAmount: '₱8888.00'.obs,
        buttonText: 'invite'.obs,
        buttonColor: Color(0xFF85D420).obs,
        textColor: appTheme.blackCustom.obs,
        isCompleted: false.obs,
        isClaimed: false.obs,
      ),
    ];
  }

  void onAchievementButtonPressed(int index) {
    AchievementModel achievement = achievements[index];

    if (achievement.isCompleted?.value == true &&
        achievement.isClaimed?.value == false) {
      // Claim the reward
      achievement.isClaimed?.value = true;
      achievement.buttonText?.value = 'Claimed';
      achievement.buttonColor?.value = appTheme.colorFF7373;
      achievements.refresh();
    } else if (achievement.isCompleted?.value == false) {
      // Navigate to invite screen or perform invite action
      // This would typically navigate to an invite screen
      print('Navigate to invite screen');
    }
  }

  void toggleShareModal() {
    isShareModalVisible.value = !isShareModalVisible.value;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
