import '../../../../core/app_export.dart';
import '../models/vip_level_item_model.dart';
import '../models/vip_upgrade_requirements_model.dart';

class VipUpgradeRequirementsController extends GetxController {
  Rx<VipUpgradeRequirementsModel> vipUpgradeRequirementsModel =
      VipUpgradeRequirementsModel().obs;

  RxList<VipLevelItemModel> vipLevels = <VipLevelItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    vipUpgradeRequirementsModel.value = VipUpgradeRequirementsModel();
    _initializeVipLevels();
  }

  void _initializeVipLevels() {
    vipLevels.value = [
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip1.obs,
        levelText: 'Lv.1'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip2.obs,
        levelText: 'Lv.2'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip3.obs,
        levelText: 'Lv.3'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip4.obs,
        levelText: 'Lv.4'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip5.obs,
        levelText: 'Lv.5'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip6.obs,
        levelText: 'Lv.6'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip7.obs,
        levelText: 'Lv.7'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip8.obs,
        levelText: 'Lv.8'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip9.obs,
        levelText: 'Lv.9'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip10.obs,
        levelText: 'Lv.10'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
    ];
  }

  void onVipUpgradeTap() {
    // Navigate to VIP upgrade bonus screen
    Get.toNamed(AppRoutes.jbet88VipUpgradeBonusScreen);
  }

  void onWeeklySalaryTap() {
    // Navigate to VIP weekly salary details screen
    Get.toNamed(AppRoutes.vipWeeklySalaryDetailsScreen);
  }

  void onMonthlySalaryTap() {
    // Navigate to VIP monthly salary details screen
    Get.toNamed(AppRoutes.vipMonthlySalaryDetailsScreen);
  }

  void onBirthdayBonusTap() {
    // Navigate to VIP rewards and benefits screen
    Get.toNamed(AppRoutes.vipRewardsAndBenefitsScreen);
  }
}
