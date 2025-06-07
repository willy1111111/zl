import '../models/achievement_dashboard_model.dart';
import '../../../../core/app_export.dart';

class AchievementDashboardController extends GetxController {
  RxList<AchievementDashboardModel> achievements =
      <AchievementDashboardModel>[].obs;
  RxBool isRulesModalVisible = false.obs;
  Rx<String>? countdownText = '22days 22hr 9min 30 sec'.obs;
  Rx<String>? progressText = '40/100'.obs;

  @override
  void onInit() {
    super.onInit();
    initializeAchievements();
  }

  void initializeAchievements() {
    achievements.value = [
      AchievementDashboardModel(
        title: 'Invite over 5 qualified users today'.obs,
        currentProgress: 5.obs,
        targetProgress: 5.obs,
        rewardAmount: '₱88.00'.obs,
        buttonText: 'Claimed'.obs,
        buttonColor: 0xFF737373.obs,
        isCompleted: true.obs,
        isClaimed: true.obs,
        textColor: 0xFF808994.obs,
      ),
      AchievementDashboardModel(
        title: 'Invite over 10 qualified users today'.obs,
        currentProgress: 10.obs,
        targetProgress: 10.obs,
        rewardAmount: '₱188.00'.obs,
        buttonText: 'claim'.obs,
        buttonColor: 0xFFFFC600.obs,
        isCompleted: true.obs,
        isClaimed: false.obs,
        textColor: 0xFFFFFFFF.obs,
      ),
      AchievementDashboardModel(
        title: 'Invite over 20 qualified users today'.obs,
        currentProgress: 12.obs,
        targetProgress: 20.obs,
        rewardAmount: '₱388.00'.obs,
        buttonText: 'invite'.obs,
        buttonColor: 0xFF85D420.obs,
        isCompleted: false.obs,
        isClaimed: false.obs,
        textColor: 0xFFFFFFFF.obs,
      ),
      AchievementDashboardModel(
        title: 'Invite over 50 qualified users today'.obs,
        currentProgress: 5.obs,
        targetProgress: 50.obs,
        rewardAmount: '₱888.00'.obs,
        buttonText: 'invite'.obs,
        buttonColor: 0xFF85D420.obs,
        isCompleted: false.obs,
        isClaimed: false.obs,
        textColor: 0xFFFFFFFF.obs,
      ),
      AchievementDashboardModel(
        title: 'Invite over 100 qualified users today'.obs,
        currentProgress: 5.obs,
        targetProgress: 100.obs,
        rewardAmount: '₱1888.00'.obs,
        buttonText: 'invite'.obs,
        buttonColor: 0xFF85D420.obs,
        isCompleted: false.obs,
        isClaimed: false.obs,
        textColor: 0xFFFFFFFF.obs,
      ),
      AchievementDashboardModel(
        title: 'Invite over 200 qualified users today'.obs,
        currentProgress: 5.obs,
        targetProgress: 200.obs,
        rewardAmount: '₱2888.00'.obs,
        buttonText: 'invite'.obs,
        buttonColor: 0xFF85D420.obs,
        isCompleted: false.obs,
        isClaimed: false.obs,
        textColor: 0xFFFFFFFF.obs,
      ),
      AchievementDashboardModel(
        title: 'Invite over 500 qualified users today'.obs,
        currentProgress: 5.obs,
        targetProgress: 500.obs,
        rewardAmount: '₱8888.00'.obs,
        buttonText: 'invite'.obs,
        buttonColor: 0xFF85D420.obs,
        isCompleted: false.obs,
        isClaimed: false.obs,
        textColor: 0xFFFFFFFF.obs,
      ),
    ];
  }

  void openRulesModal() {
    isRulesModalVisible.value = true;
  }

  void closeRulesModal() {
    isRulesModalVisible.value = false;
  }

  void handleAchievementAction(int index) {
    final achievement = achievements[index];

    if (achievement.buttonText?.value == 'claim') {
      achievement.buttonText?.value = 'Claimed';
      achievement.buttonColor?.value = 0xFF737373;
      achievement.isClaimed?.value = true;
      achievement.textColor?.value = 0xFF808994;
      achievements.refresh();
    } else if (achievement.buttonText?.value == 'invite') {
      // Handle invite action - navigate to invite screen or show invite dialog
      Get.snackbar(
        'Invite',
        'Invite functionality will be implemented here',
        backgroundColor: appTheme.colorFF85D4,
        colorText: appTheme.blackCustom,
      );
    }
  }

  void updateCountdown(String newCountdown) {
    countdownText?.value = newCountdown;
  }

  void updateProgress(String newProgress) {
    progressText?.value = newProgress;
  }
}
