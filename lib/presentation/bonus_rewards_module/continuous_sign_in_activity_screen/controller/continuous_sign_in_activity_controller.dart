import '../../../../../core/app_export.dart';
import '../models/continuous_sign_in_activity_model.dart';
import '../models/daily_reward_model.dart';
import '../models/special_reward_model.dart';

class ContinuousSignInActivityController extends GetxController {
  Rx<ContinuousSignInActivityModel> continuousSignInActivityModel =
      ContinuousSignInActivityModel().obs;

  RxInt signInCount = 24.obs;
  RxString totalBonus = '0.20'.obs;
  RxInt currentDay = 4.obs;
  RxString dailyBonus = '0.20'.obs;
  RxString extraBonus = '0.20'.obs;
  RxString activityTime = '29Day 23:59:59'.obs;
  RxBool showUpdateModal = true.obs;

  RxList<DailyRewardModel> dailyRewards = <DailyRewardModel>[].obs;
  RxList<SpecialRewardModel> specialRewards = <SpecialRewardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    continuousSignInActivityModel.value = ContinuousSignInActivityModel();
    _initializeDailyRewards();
    _initializeSpecialRewards();
  }

  void _initializeDailyRewards() {
    dailyRewards.value = [
      DailyRewardModel(
        day: 1.obs,
        amount: '0.20'.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
        coinImage: ImageConstant.img1733643593.obs,
        checkImage: ImageConstant.imgVectorLightGreenA700.obs,
      ),
      DailyRewardModel(
        day: 2.obs,
        amount: '0.20'.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
        coinImage: ImageConstant.img1733643593.obs,
        checkImage: ImageConstant.imgVectorLightGreenA700.obs,
      ),
      DailyRewardModel(
        day: 3.obs,
        amount: '0.20'.obs,
        isCompleted: true.obs,
        isCurrent: false.obs,
        coinImage: ImageConstant.img1733643593.obs,
        checkImage: ImageConstant.imgVectorLightGreenA700.obs,
      ),
      DailyRewardModel(
        day: 4.obs,
        amount: '0.20'.obs,
        isCompleted: false.obs,
        isCurrent: true.obs,
        coinImage: ImageConstant
            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb1.obs,
        arrowImage: ImageConstant.imgUnion16x47.obs,
        bonusText: '+₱0.20'.obs,
      ),
      DailyRewardModel(
        day: 5.obs,
        amount: '₱ 0.20'.obs,
        isCompleted: false.obs,
        isCurrent: false.obs,
        coinImage: ImageConstant.img1733643593.obs,
      ),
    ];
  }

  void _initializeSpecialRewards() {
    specialRewards.value = [
      SpecialRewardModel(
        iconImage: ImageConstant
            .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1.obs,
        title: 'Times of deposits：2'.obs,
        subtitle: 'Deposit amount： ₱200'.obs,
        status: 'Undone'.obs,
        statusImage: ImageConstant.imgRectangle727.obs,
        isCompleted: false.obs,
        backgroundColor: 0xFF006A2A.obs,
        iconBackgroundColor: 0xFFD8D908.obs,
        statusText: 'Sign-in'.obs,
      ),
      SpecialRewardModel(
        iconImage: ImageConstant
            .imgE20d8191b75bf24128ad9a71c8758aec6b55b61f2cf0itmebv2.obs,
        title: 'Times of deposits：1'.obs,
        subtitle: 'Deposit amount： ₱200'.obs,
        status: 'Finished'.obs,
        statusImage: ImageConstant.imgRectangle719.obs,
        finishedImage: ImageConstant.imgZsofe1.obs,
        isCompleted: true.obs,
        backgroundColor: 0xFF809688.obs,
        iconBackgroundColor: 0xFF6B7971.obs,
        statusText: 'Unlocked'.obs,
        starImage: ImageConstant.imgStar1.obs,
      ),
    ];
  }

  void signIn() {
    if (currentDay.value < 5) {
      final currentReward = dailyRewards.firstWhere(
        (reward) => reward.isCurrent?.value == true,
      );
      currentReward.isCompleted?.value = true;
      currentReward.isCurrent?.value = false;

      if (currentDay.value < 5) {
        currentDay.value++;
        if (currentDay.value <= 5) {
          final nextReward = dailyRewards.firstWhere(
            (reward) => reward.day?.value == currentDay.value,
          );
          nextReward.isCurrent?.value = true;
        }
      }

      signInCount.value++;
      dailyRewards.refresh();
    }
  }

  void selectDay(int index) {
    // Handle day selection if needed
  }

  void selectSpecialReward(int index) {
    // Handle special reward selection if needed
  }

  void closeUpdateModal() {
    showUpdateModal.value = false;
  }

  void updateApp() {
    // Handle app update
    closeUpdateModal();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
