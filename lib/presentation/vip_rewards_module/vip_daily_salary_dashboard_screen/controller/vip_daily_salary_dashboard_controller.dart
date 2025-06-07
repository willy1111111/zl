import '../../../../core/app_export.dart';
import '../models/vip_daily_salary_dashboard_model.dart';
import '../models/vip_requirement_model.dart';

class VipDailySalaryDashboardController extends GetxController {
  Rx<VipDailySalaryDashboardModel> vipDailySalaryDashboardModel =
      VipDailySalaryDashboardModel().obs;

  RxList<VipRequirementModel> vipRequirements = <VipRequirementModel>[].obs;
  RxBool isPrivilegesExpanded = false.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeVipRequirements();
  }

  void _initializeVipRequirements() {
    vipRequirements.value = [
      VipRequirementModel(
        level: 'Lv.1'.obs,
        vipIcon: ImageConstant.imgIconvip1.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
        dailySalary: '0'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.2'.obs,
        vipIcon: ImageConstant.imgIconvip2.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
        dailySalary: '2902'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.3'.obs,
        vipIcon: ImageConstant.imgIconvip3.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
        dailySalary: '100-1000'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.4'.obs,
        vipIcon: ImageConstant.imgIconvip4.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
        dailySalary: '100-1000'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.5'.obs,
        vipIcon: ImageConstant.imgIconvip5.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
        dailySalary: '100-1000'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.6'.obs,
        vipIcon: ImageConstant.imgIconvip6.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
        dailySalary: '100-1000'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.7'.obs,
        vipIcon: ImageConstant.imgIconvip7.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
        dailySalary: '100-1000'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.8'.obs,
        vipIcon: ImageConstant.imgIconvip8.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
        dailySalary: '100-1000'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.9'.obs,
        vipIcon: ImageConstant.imgIconvip9.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
        dailySalary: '100-1000'.obs,
      ),
      VipRequirementModel(
        level: 'Lv.10'.obs,
        vipIcon: ImageConstant.imgIconvip10.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
        dailySalary: '100-1000'.obs,
      ),
    ];
  }

  void receiveSalary() {
    Get.snackbar(
      'Success',
      'Salary received successfully!',
      backgroundColor: appTheme.colorFF76CD,
      colorText: appTheme.whiteCustom,
    );
  }

  void navigateToUpgradeBonus() {
    Get.toNamed(AppRoutes.jbet88VipUpgradeBonusScreen);
  }

  void navigateToWeeklySalary() {
    Get.toNamed(AppRoutes.vipWeeklySalaryDetailsScreen);
  }

  void navigateToMonthlySalary() {
    Get.toNamed(AppRoutes.vipMonthlySalaryDetailsScreen);
  }

  void togglePrivileges() {
    isPrivilegesExpanded.value = !isPrivilegesExpanded.value;
  }
}
