import '../models/vip_daily_salary_claimed_model.dart';
import '../../../../core/app_export.dart';

class VipDailySalaryClaimedController extends GetxController {
  Rx<VipDailySalaryClaimedModel> vipDailySalaryClaimedModelObj =
      VipDailySalaryClaimedModel().obs;

  @override
  void onInit() {
    super.onInit();
    vipDailySalaryClaimedModelObj.value = VipDailySalaryClaimedModel(
      totalValidBets: '₱100'.obs,
      estimatedSalary: '₱2.00'.obs,
      yesterdaySalary: '₱4933.70'.obs,
      isReceived: false.obs,
    );
  }

  void onInfoIconPressed() {
    Get.snackbar(
      'VIP Daily Salary Information',
      'Track your daily betting activity and earnings.',
      backgroundColor: appTheme.colorFF2E31,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 3),
    );
  }

  void onReceivedButtonPressed() {
    vipDailySalaryClaimedModelObj.value.isReceived?.value = true;
    vipDailySalaryClaimedModelObj.refresh();
  }
}
