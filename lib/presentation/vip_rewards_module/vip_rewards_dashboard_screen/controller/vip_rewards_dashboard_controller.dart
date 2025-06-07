import '../../../../core/app_export.dart';
import '../models/vip_requirement_model.dart';
import '../models/vip_rewards_dashboard_model.dart';

class VipRewardsDashboardController extends GetxController {
  Rx<VipRewardsDashboardModel> vipRewardsDashboardModel =
      VipRewardsDashboardModel().obs;
  RxList<VipRequirementModel> vipRequirements = <VipRequirementModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeVipRequirements();
  }

  void _initializeVipRequirements() {
    vipRequirements.value = [
      VipRequirementModel(
        level: 'Lv.1'.obs,
        iconPath: ImageConstant.imgIconvip1.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.2'.obs,
        iconPath: ImageConstant.imgIconvip2.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.3'.obs,
        iconPath: ImageConstant.imgIconvip3.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.4'.obs,
        iconPath: ImageConstant.imgIconvip4.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.5'.obs,
        iconPath: ImageConstant.imgIconvip5.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.6'.obs,
        iconPath: ImageConstant.imgIconvip6.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.7'.obs,
        iconPath: ImageConstant.imgIconvip7.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.8'.obs,
        iconPath: ImageConstant.imgIconvip8.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.9'.obs,
        iconPath: ImageConstant.imgIconvip9.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.10'.obs,
        iconPath: ImageConstant.imgIconvip10.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
    ];
  }

  void onVipUpgradeCardTap() {
    Get.toNamed(AppRoutes.vipRewardsAndBenefitsScreen);
  }

  void onMonthlySalaryCardTap() {
    Get.toNamed(AppRoutes.vipMonthlySalaryDetailsScreen);
  }

  void onBirthdayBonusCardTap() {
    Get.toNamed(AppRoutes.vipRewardsBenefitsScreen);
  }

  void onReceiveAwardTap() {
    Get.snackbar(
      'Reward',
      'Time has not come yet',
      backgroundColor: appTheme.colorFF4B55,
      colorText: appTheme.whiteCustom,
    );
  }
}
