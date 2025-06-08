import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/rewards_achievements_model.dart';

class RewardsAchievementsController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> bounceAnimation;

  Rx<RewardsAchievementsModel> rewardsAchievementsModel =
      RewardsAchievementsModel().obs;

  RxList<AchievementItemModel> achievementItems = <AchievementItemModel>[].obs;
  RxInt selectedIndex = (-1).obs;
  RxBool isAnimating = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializeAnimation();
    initializeAchievementItems();
  }

  void initializeAnimation() {
    animationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    bounceAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.elasticOut,
    ));
  }

  void initializeAchievementItems() {
    achievementItems.value = [
      AchievementItemModel(
        id: '1'.obs,
        imagePath: ImageConstant.imgTohlf1.obs,
        title: 'Golden Trophy'.obs,
        isUnlocked: true.obs,
      ),
      AchievementItemModel(
        id: '2'.obs,
        imagePath: ImageConstant.imgImage358.obs,
        title: 'Gold Coins Stack'.obs,
        isUnlocked: true.obs,
      ),
      AchievementItemModel(
        id: '3'.obs,
        imagePath: ImageConstant.imgImage9.obs,
        title: 'Reward Item'.obs,
        isUnlocked: false.obs,
      ),
      AchievementItemModel(
        id: '4'.obs,
        imagePath: ImageConstant.imgImage359.obs,
        title: 'Gift Box'.obs,
        isUnlocked: true.obs,
      ),
    ];
  }

  void onAchievementTap(int index) {
    if (isAnimating.value) return;

    selectedIndex.value = index;
    isAnimating.value = true;

    animationController.forward().then((_) {
      animationController.reverse().then((_) {
        isAnimating.value = false;
        selectedIndex.value = -1;

        // Handle achievement unlock or reward claim
        if (achievementItems[index].isUnlocked?.value ?? false) {
          claimReward(index);
        } else {
          showUnlockDialog(index);
        }
      });
    });
  }

  void claimReward(int index) {
    final achievement = achievementItems[index];
    Get.snackbar(
      'Reward Claimed!',
      'You have claimed the ${achievement.title?.value ?? ''} reward',
      backgroundColor: appTheme.greenCustom,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }

  void showUnlockDialog(int index) {
    final achievement = achievementItems[index];
    Get.dialog(
      AlertDialog(
        title: Text('Achievement Locked'),
        content: Text(
            'Complete more challenges to unlock ${achievement.title?.value ?? 'this achievement'}'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
