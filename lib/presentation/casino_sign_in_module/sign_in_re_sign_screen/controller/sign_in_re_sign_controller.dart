import '../../../../../core/app_export.dart';
import '../models/daily_progress_item_model.dart';
import '../models/sign_in_re_sign_model.dart';

class SignInReSignController extends GetxController {
  Rx<SignInReSignModel?> signInReSignModel = Rx<SignInReSignModel?>(null);
  RxList<DailyProgressItemModel> dailyProgressItems =
      <DailyProgressItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    signInReSignModel.value = SignInReSignModel(
      signInCount: '24'.obs,
      totalBonus: '₱ 0.20'.obs,
      currentDayTitle: 'Sign-in Today: Day 4'.obs,
      dailyBonus: '₱ 0.20'.obs,
      extraBonus: '₱0.20'.obs,
      bonusAmount: '₱ 0.20'.obs,
      depositInfo: 'Times of deposits：2\nDeposit amount： ₱200'.obs,
      activityTime: '29Day 23:59:59'.obs,
      remainingReSignments: '0'.obs,
    );

    dailyProgressItems.value = [
      DailyProgressItemModel(
        day: 'Day 1'.obs,
        amount: '0.20'.obs,
        isCompleted: true.obs,
        isCurrentDay: false.obs,
        coinImage: ImageConstant.img1733643594.obs,
        checkImage: ImageConstant.imgVector.obs,
      ),
      DailyProgressItemModel(
        day: 'Day 2'.obs,
        amount: '0.20'.obs,
        isCompleted: true.obs,
        isCurrentDay: false.obs,
        coinImage: ImageConstant.img1733643594.obs,
        checkImage: ImageConstant.imgVector.obs,
      ),
      DailyProgressItemModel(
        day: 'Day 3'.obs,
        amount: '0.20'.obs,
        isCompleted: true.obs,
        isCurrentDay: false.obs,
        coinImage: ImageConstant.img1733643594.obs,
        checkImage: ImageConstant.imgVector.obs,
      ),
      DailyProgressItemModel(
        day: 'Day 4'.obs,
        amount: '0.20'.obs,
        isCompleted: false.obs,
        isCurrentDay: true.obs,
        coinImage: ImageConstant
            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb1.obs,
        bonusImage: ImageConstant.imgUnion.obs,
        bonusText: '+₱0.20'.obs,
      ),
      DailyProgressItemModel(
        day: 'Day 5'.obs,
        amount: '₱ 0.20'.obs,
        isCompleted: false.obs,
        isCurrentDay: false.obs,
        coinImage: ImageConstant.img1733643594.obs,
        futureImage: ImageConstant.imgGroup1266120x41.obs,
      ),
    ];
  }

  void onReSignPressed() {
    // Handle re-signing logic
    Get.snackbar(
      'Re-signing',
      'Re-signing functionality would be implemented here',
      backgroundColor: appTheme.colorFF76CD,
      colorText: appTheme.whiteCustom,
    );
  }
}
