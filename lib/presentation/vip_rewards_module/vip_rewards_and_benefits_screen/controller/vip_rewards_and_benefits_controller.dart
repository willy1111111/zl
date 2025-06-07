import '../../../../core/app_export.dart';
import '../models/vip_requirement_item_model.dart';
import '../models/vip_rewards_and_benefits_model.dart';

class VipRewardsAndBenefitsController extends GetxController {
  Rx<VipRewardsAndBenefitsModel> vipRewardsAndBenefitsModel =
      VipRewardsAndBenefitsModel().obs;

  RxList<VipRequirementItemModel> vipRequirements =
      <VipRequirementItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    vipRewardsAndBenefitsModel.value = VipRewardsAndBenefitsModel();
    _initializeVipRequirements();
  }

  void _initializeVipRequirements() {
    vipRequirements.value = [
      VipRequirementItemModel(
        vipIcon: ImageConstant.imgIconvip1.obs,
        level: 'Lv.1'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipRequirementItemModel(
        vipIcon: ImageConstant.imgIconvip2.obs,
        level: 'Lv.2'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipIcon: ImageConstant.imgIconvip3.obs,
        level: 'Lv.3'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipRequirementItemModel(
        vipIcon: ImageConstant.imgIconvip4.obs,
        level: 'Lv.4'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipIcon: ImageConstant.imgIconvip5.obs,
        level: 'Lv.5'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipIcon: ImageConstant.imgIconvip6.obs,
        level: 'Lv.6'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipIcon: ImageConstant.imgIconvip7.obs,
        level: 'Lv.7'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipIcon: ImageConstant.imgIconvip8.obs,
        level: 'Lv.8'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipIcon: ImageConstant.imgIconvip9.obs,
        level: 'Lv.9'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipIcon: ImageConstant.imgIconvip10.obs,
        level: 'Lv.10'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
    ];
  }

  void onUpgradeBonusTap() {
    // Handle VIP upgrade bonus navigation
    Get.toNamed(AppRoutes.vipUpgradeRequirementsScreen);
  }

  void onWeeklySalaryTap() {
    // Handle weekly salary navigation
    Get.toNamed(AppRoutes.vipWeeklySalaryDetailsScreen);
  }

  void onMonthlySalaryTap() {
    // Handle monthly salary navigation
    Get.toNamed(AppRoutes.vipMonthlySalaryDetailsScreen);
  }

  void onBirthdayBonusTap() {
    // Handle birthday bonus navigation
    Get.toNamed(AppRoutes.vipRewardsDashboardScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
