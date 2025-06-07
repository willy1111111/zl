import '../../../../core/app_export.dart';
import '../models/vip_level_item_model.dart';
import '../models/vip_monthly_salary_benefits_model.dart';

class VipMonthlySalaryBenefitsController extends GetxController {
  final vipMonthlySalaryBenefitsModel =
      Rx<VipMonthlySalaryBenefitsModel?>(null);
  final vipLevels = <VipLevelItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    vipMonthlySalaryBenefitsModel.value = VipMonthlySalaryBenefitsModel();
    initializeVipLevels();
  }

  void initializeVipLevels() {
    vipLevels.value = [
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip1.obs,
        level: 'Lv.1'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip2.obs,
        level: 'Lv.2'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip3.obs,
        level: 'Lv.3'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip4.obs,
        level: 'Lv.4'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip5.obs,
        level: 'Lv.5'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip6.obs,
        level: 'Lv.6'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip7.obs,
        level: 'Lv.7'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip8.obs,
        level: 'Lv.8'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip9.obs,
        level: 'Lv.9'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip10.obs,
        level: 'Lv.10'.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
    ];
  }

  void onVipUpgradeCardTap() {
    // Handle VIP upgrade card tap
  }

  void onVipWeeklySalaryCardTap() {
    // Handle VIP weekly salary card tap
  }

  void onVipMonthlySalaryCardTap() {
    // Handle VIP monthly salary card tap
  }

  void onVipBirthdayBonusCardTap() {
    // Handle VIP birthday bonus card tap
  }

  void onReceiveAwardTap() {
    // Handle receive award button tap
  }
}
