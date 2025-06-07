import '../../../../../core/app_export.dart';
import '../models/bonus_item_model.dart';
import '../models/casino_bonus_rewards_model.dart';

class CasinoBonusRewardsController extends GetxController {
  Rx<CasinoBonusRewardsModel> casinoBonusRewardsModel =
      CasinoBonusRewardsModel().obs;
  RxList<BonusItemModel> bonusItems = <BonusItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeBonusItems();
  }

  void _initializeBonusItems() {
    bonusItems.value = [
      BonusItemModel(
        title: 'Cumulative Deposit Bonus'.obs,
        subtitle: 'your bonus:'.obs,
        amount: '₱ 300.00'.obs,
        iconPath: ImageConstant.imgGold.obs,
        isClaimable: true.obs,
        hasVipElements: false.obs,
      ),
      BonusItemModel(
        title: 'VIP Daily Salary'.obs,
        subtitle: 'your bonus:'.obs,
        amount: '₱ 8888.00'.obs,
        iconPath: ImageConstant.imgGold.obs,
        isClaimable: false.obs,
        hasVipElements: true.obs,
        vipBackgroundPath: ImageConstant.img12.obs,
        vipBadgePath: ImageConstant.imgVip.obs,
        vipCrownPath: ImageConstant.imgYellowA400.obs,
      ),
      BonusItemModel(
        title: 'Registration Bonus'.obs,
        subtitle: 'your bonus:'.obs,
        amount: '₱ 12.00'.obs,
        iconPath: ImageConstant.imgGold.obs,
        isClaimable: true.obs,
        hasVipElements: false.obs,
      ),
    ];
  }

  void onClaimBonus(int index) {
    if (bonusItems[index].isClaimable?.value ?? false) {
      // Handle bonus claim logic
      Get.snackbar(
        'Success',
        'Bonus claimed successfully!',
        backgroundColor: appTheme.greenCustom,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );

      // Update the bonus item to claimed state
      bonusItems[index].isClaimable?.value = false;
      bonusItems.refresh();
    }
  }

  void onClosePressed() {
    Get.back();
  }
}
