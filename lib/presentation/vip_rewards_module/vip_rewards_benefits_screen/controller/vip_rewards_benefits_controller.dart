import '../../../../core/app_export.dart';
import '../models/vip_level_item_model.dart';
import '../models/vip_rewards_benefits_model.dart';

class VipRewardsBenefitsController extends GetxController {
  Rx<VipRewardsBenefitsModel> vipRewardsBenefitsModel =
      VipRewardsBenefitsModel().obs;
  RxList<VipLevelItemModel> vipLevels = <VipLevelItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    vipRewardsBenefitsModel.value = VipRewardsBenefitsModel();
    initializeVipLevels();
  }

  void initializeVipLevels() {
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

  void onVipUpgradeTap() {
    // Handle VIP upgrade bonus tap
    print('VIP Upgrade Bonus tapped');
  }

  void onVipWeeklySalaryTap() {
    // Handle VIP weekly salary tap
    print('VIP Weekly Salary tapped');
  }

  void onVipMonthlySalaryTap() {
    // Handle VIP monthly salary tap
    print('VIP Monthly Salary tapped');
  }

  void onVipBirthdayBonusTap() {
    // Handle VIP birthday bonus tap
    print('VIP Birthday Bonus tapped');
  }
}
