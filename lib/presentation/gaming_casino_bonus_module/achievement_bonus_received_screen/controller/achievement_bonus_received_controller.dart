import '../models/achievement_bonus_received_model.dart';

import 'package:get/get.dart';

import '../models/achievement_item_model.dart';

import '../../../core/app_export.dart';

class AchievementBonusReceivedController extends GetxController {
  Rx<AchievementBonusReceivedModel> achievementBonusReceivedModel =
      AchievementBonusReceivedModel().obs;
  RxList<AchievementItemModel> achievementItems = <AchievementItemModel>[].obs;
  RxBool showSuccessDialog = false.obs;
  RxString balanceAmount = '₱1980.00'.obs;
  RxString countdownText = '22days 22hr 9min 30 sec'.obs;
  RxString progressText = '40/100'.obs;

  @override
  void onInit() {
    super.onInit();
    loadAchievementItems();
  }

  void loadAchievementItems() {
    achievementItems.value = [
      AchievementItemModel(
        title: 'Invite over 5 qualified users today'.obs,
        currentProgress: '5'.obs,
        maxProgress: '5'.obs,
        rewardAmount: '₱88.00'.obs,
        status: AchievementStatus.claimed.obs,
      ),
      AchievementItemModel(
        title: 'Invite over 10 qualified users today'.obs,
        currentProgress: '10'.obs,
        maxProgress: '10'.obs,
        rewardAmount: '₱188.00'.obs,
        status: AchievementStatus.claimable.obs,
      ),
      AchievementItemModel(
        title: 'Invite over 20 qualified users today'.obs,
        currentProgress: '12'.obs,
        maxProgress: '20'.obs,
        rewardAmount: '₱388.00'.obs,
        status: AchievementStatus.invite.obs,
      ),
      AchievementItemModel(
        title: 'Invite over 50 qualified users today'.obs,
        currentProgress: '5'.obs,
        maxProgress: '50'.obs,
        rewardAmount: '₱888.00'.obs,
        status: AchievementStatus.invite.obs,
      ),
      AchievementItemModel(
        title: 'Invite over 100 qualified users today'.obs,
        currentProgress: '5'.obs,
        maxProgress: '100'.obs,
        rewardAmount: '₱1888.00'.obs,
        status: AchievementStatus.invite.obs,
      ),
      AchievementItemModel(
        title: 'Invite over 200 qualified users today'.obs,
        currentProgress: '5'.obs,
        maxProgress: '200'.obs,
        rewardAmount: '₱2888.00'.obs,
        status: AchievementStatus.invite.obs,
      ),
      AchievementItemModel(
        title: 'Invite over 500 qualified users today'.obs,
        currentProgress: '5'.obs,
        maxProgress: '500'.obs,
        rewardAmount: '₱8888.00'.obs,
        status: AchievementStatus.invite.obs,
      ),
    ];
  }

  void onClaimAchievement(int index) {
    final item = achievementItems[index];
    if (item.status?.value == AchievementStatus.claimable) {
      showSuccessDialog.value = true;
      item.status?.value = AchievementStatus.claimed;
      achievementItems.refresh();
    }
  }

  void closeSuccessDialog() {
    showSuccessDialog.value = false;
  }

  void onBalanceTap() {
    // Handle balance tap
  }

  void navigateToInvite() {
    // Navigate to invite screen
  }

  void navigateToTeams() {
    // Navigate to teams screen
  }

  void navigateToIncomes() {
    // Navigate to incomes screen
  }

  void navigateToBonus() {
    // Navigate to bonus screen
  }

  void navigateToFaq() {
    // Navigate to FAQ screen
  }
}
