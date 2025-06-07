import '../../../../../core/app_export.dart';
import '../models/daily_reward_model.dart';
import '../models/sign_in_rewards_model.dart';
import '../models/special_reward_model.dart';

class SignInRewardsController extends GetxController {
  Rx<SignInRewardsModel?> signInRewardsModel = Rx<SignInRewardsModel?>(null);
  RxList<DailyRewardModel> dailyRewards = <DailyRewardModel>[].obs;
  Rx<List<SpecialRewardModel>?> specialRewards =
      Rx<List<SpecialRewardModel>?>(null);
  RxInt continuousSignIns = 3.obs;
  RxString currentBonus = '₱ 0.20'.obs;
  RxString totalSignIns = '24'.obs;
  RxString totalBonus = '₱ 0.20'.obs;
  RxBool isSignInEnabled = true.obs;

  @override
  void onInit() {
    super.onInit();
    signInRewardsModel.value = SignInRewardsModel();
    _initializeDailyRewards();
    _initializeSpecialRewards();
  }

  void _initializeDailyRewards() {
    dailyRewards.value = [
      DailyRewardModel(
        day: 1,
        amount: '0.20',
        isCompleted: true.obs,
        coinImagePath: ImageConstant.img1733643593.obs,
        checkImagePath: ImageConstant.imgVectorLightGreenA700.obs,
      ),
      DailyRewardModel(
        day: 2,
        amount: '0.20',
        isCompleted: true.obs,
        coinImagePath: ImageConstant.img1733643593.obs,
        checkImagePath: ImageConstant.imgVectorLightGreenA700.obs,
      ),
      DailyRewardModel(
        day: 3,
        amount: '0.20',
        isCompleted: true.obs,
        coinImagePath: ImageConstant.img1733643593.obs,
        checkImagePath: ImageConstant.imgVectorLightGreenA700.obs,
      ),
      DailyRewardModel(
        day: 4,
        amount: '0.20',
        isCompleted: false.obs,
        isCurrent: true.obs,
        coinImagePath: ImageConstant
            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb1.obs,
        arrowImagePath: ImageConstant.imgUnion16x47.obs,
        bonusText: '+₱0.20'.obs,
      ),
      DailyRewardModel(
        day: 5,
        amount: '₱ 0.20',
        isCompleted: false.obs,
        coinImagePath: ImageConstant.img1733643593.obs,
      ),
    ];
  }

  void _initializeSpecialRewards() {
    specialRewards.value = [
      SpecialRewardModel(
        imagePath: ImageConstant
            .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21.obs,
        iconPath: ImageConstant.img1733643598.obs,
        width: 70.0.obs, // Modified: Changed from RxInt to RxDouble
        height: 70.0.obs, // Modified: Changed from RxInt to RxDouble
      ),
      SpecialRewardModel(
        imagePath: ImageConstant
            .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21.obs,
        iconPath: ImageConstant
            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb2.obs,
        width: 70.0.obs, // Modified: Changed from RxInt to RxDouble
        height: 73.0.obs, // Modified: Changed from RxInt to RxDouble
        hasExtraLabel: true.obs,
      ),
    ];
  }

  void onSignInPressed() {
    if (isSignInEnabled.value) {
      // Handle sign-in logic
      isSignInEnabled.value = false;
      Get.snackbar('Success', 'Sign-in completed successfully!');

      // Update current day completion
      final currentDayIndex =
          dailyRewards.indexWhere((reward) => reward.isCurrent?.value ?? false);
      if (currentDayIndex != -1) {
        dailyRewards[currentDayIndex].isCompleted?.value = true;
        dailyRewards[currentDayIndex].isCurrent?.value = false;

        // Move to next day if available
        if (currentDayIndex + 1 < dailyRewards.length) {
          dailyRewards[currentDayIndex + 1].isCurrent?.value = true;
        }
      }

      continuousSignIns.value++;
      dailyRewards.refresh();
    }
  }

  void onContinueH5Pressed() {
    // Handle continue with H5 version
    Get.back();
  }

  void onDownloadAppPressed() {
    // Handle app download
    Get.toNamed('/download');
  }
}
