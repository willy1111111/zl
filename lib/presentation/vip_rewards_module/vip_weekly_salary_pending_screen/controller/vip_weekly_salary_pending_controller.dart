import '../../../../core/app_export.dart';
import '../models/vip_requirement_item_model.dart';
import '../models/vip_weekly_salary_pending_model.dart';

class VipWeeklySalaryPendingController extends GetxController {
  Rx<VipWeeklySalaryPendingModel> vipWeeklySalaryPendingModelObj =
      VipWeeklySalaryPendingModel().obs;

  RxString countdownTime = '2 days 23：59：59'.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializeVipRequirements();
    startCountdownTimer();
  }

  void initializeVipRequirements() {
    vipWeeklySalaryPendingModelObj.value.vipRequirements.value = [
      VipRequirementItemModel(
        level: 'Lv.1'.obs,
        iconPath: ImageConstant.imgIconvip1.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.2'.obs,
        iconPath: ImageConstant.imgIconvip2.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.3'.obs,
        iconPath: ImageConstant.imgIconvip3.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.4'.obs,
        iconPath: ImageConstant.imgIconvip4.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.5'.obs,
        iconPath: ImageConstant.imgIconvip5.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.6'.obs,
        iconPath: ImageConstant.imgIconvip6.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.7'.obs,
        iconPath: ImageConstant.imgIconvip7.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.8'.obs,
        iconPath: ImageConstant.imgIconvip8.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.9'.obs,
        iconPath: ImageConstant.imgIconvip9.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.10'.obs,
        iconPath: ImageConstant.imgIconvip10.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
    ];
  }

  void startCountdownTimer() {
    // Simulate countdown functionality
    Future.delayed(Duration(seconds: 1), () {
      if (countdownTime.value != '0 days 0：0：0') {
        startCountdownTimer();
      }
    });
  }

  void onMenuTapped() {
    // Handle menu button tap
  }

  void onVipUpgradeTapped() {
    // Navigate to VIP upgrade screen
    Get.toNamed(AppRoutes.jbet88VipUpgradeBonusScreen);
  }

  void onVipWeeklyTapped() {
    // Navigate to VIP weekly details screen
    Get.toNamed(AppRoutes.vipWeeklySalaryDetailsScreen);
  }

  void onVipMonthlyTapped() {
    // Navigate to VIP monthly details screen
    Get.toNamed(AppRoutes.vipMonthlySalaryDetailsScreen);
  }

  void onVipBirthdayTapped() {
    // Navigate to VIP rewards screen
    Get.toNamed(AppRoutes.vipRewardsAndBenefitsScreen);
  }

  void onReceiveAwardTapped() {
    // Handle receive award action
    isLoading.value = true;

    Future.delayed(Duration(seconds: 2), () {
      isLoading.value = false;
      Get.toNamed(AppRoutes.vipWeeklySalarySubmittedScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
