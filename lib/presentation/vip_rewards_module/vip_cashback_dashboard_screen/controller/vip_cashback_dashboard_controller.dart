import '../../../../core/app_export.dart';
import '../models/vip_cashback_dashboard_model.dart';
import '../models/vip_level_item_model.dart';

class VipCashbackDashboardController extends GetxController {
  Rx<VipCashbackDashboardModel> vipCashbackDashboardModel =
      VipCashbackDashboardModel().obs;
  RxList<VipLevelItemModel> vipLevels = <VipLevelItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeVipLevels();
  }

  void _initializeVipLevels() {
    vipLevels.value = [
      VipLevelItemModel(
        vipIcon: ImageConstant.imgIconvip1.obs,
        levelText: 'Lv.1'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipLevelItemModel(
        vipIcon: ImageConstant.imgIconvip2.obs,
        levelText: 'Lv.2'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        vipIcon: ImageConstant.imgIconvip3.obs,
        levelText: 'Lv.3'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipLevelItemModel(
        vipIcon: ImageConstant.imgIconvip4.obs,
        levelText: 'Lv.4'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        vipIcon: ImageConstant.imgIconvip5.obs,
        levelText: 'Lv.5'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        vipIcon: ImageConstant.imgIconvip6.obs,
        levelText: 'Lv.6'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        vipIcon: ImageConstant.imgIconvip7.obs,
        levelText: 'Lv.7'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        vipIcon: ImageConstant.imgIconvip8.obs,
        levelText: 'Lv.8'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        vipIcon: ImageConstant.imgIconvip9.obs,
        levelText: 'Lv.9'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        vipIcon: ImageConstant.imgIconvip10.obs,
        levelText: 'Lv.10'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
    ];
  }

  void onWeeklyCashbackTap() {
    // Handle weekly cashback card tap
  }

  void onClaimNowTap() {
    // Handle claim now button tap
    Get.snackbar(
      'Claim Request',
      'Claim request submitted!',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onVipUpgradeBonusTap() {
    // Handle VIP upgrade bonus card tap
  }

  void onVipWeeklySalaryTap() {
    // Handle VIP weekly salary card tap
  }

  void onVipMonthlySalaryTap() {
    // Handle VIP monthly salary card tap
  }

  void onVipBirthdayBonusTap() {
    // Handle VIP birthday bonus card tap
  }
}
