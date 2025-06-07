import '../../../../../core/app_export.dart';
import '../models/daily_progress_item_model.dart';
import '../models/free_sign_in_rewards_model.dart';

class FreeSignInRewardsController extends GetxController {
  Rx<FreeSignInRewardsModel> freeSignInRewardsModelObj =
      FreeSignInRewardsModel().obs;

  RxList<DailyProgressItemModel> dailyProgressItems =
      <DailyProgressItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeDailyProgress();
  }

  void initializeDailyProgress() {
    dailyProgressItems.value = [
      DailyProgressItemModel(
        amount: '0.20'.obs,
        coinImage: ImageConstant.img1733643594.obs,
        dayNumber: 'Day 1'.obs,
        isCompleted: true.obs,
        isActive: false.obs,
        checkIcon: ImageConstant.imgVector.obs,
        borderColor: 0xFFFFC600.obs,
        backgroundColor: 0xFF25282D.obs,
      ),
      DailyProgressItemModel(
        amount: '0.20'.obs,
        coinImage: ImageConstant.img1733643594.obs,
        dayNumber: 'Day 2'.obs,
        isCompleted: true.obs,
        isActive: false.obs,
        checkIcon: ImageConstant.imgVector.obs,
        borderColor: 0xFFFFC600.obs,
        backgroundColor: 0xFF25282D.obs,
      ),
      DailyProgressItemModel(
        amount: '0.20'.obs,
        coinImage: ImageConstant.img1733643594.obs,
        dayNumber: 'Day 3'.obs,
        isCompleted: true.obs,
        isActive: false.obs,
        checkIcon: ImageConstant.imgVector.obs,
        borderColor: 0xFFFFC600.obs,
        backgroundColor: 0xFF25282D.obs,
      ),
      DailyProgressItemModel(
        amount: '0.20'.obs,
        coinImage: ImageConstant
            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb1.obs,
        dayNumber: 'Day 4'.obs,
        isCompleted: false.obs,
        isActive: true.obs,
        bonusAmount: '+₱0.20'.obs,
        borderColor: null,
        backgroundColor: 0xFF009F41.obs,
      ),
      DailyProgressItemModel(
        amount: '₱ 0.20'.obs,
        coinImage: ImageConstant.img1733643594.obs,
        dayNumber: 'Day 5'.obs,
        isCompleted: false.obs,
        isActive: false.obs,
        borderColor: 0xFF292F36.obs,
        backgroundColor: 0xFF1E2024.obs,
      ),
    ];
  }

  void collectBonus() {
    Get.snackbar(
      'Bonus Collected',
      '₱0.20 added to your account',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF009F,
      colorText: appTheme.whiteCustom,
    );
  }
}
