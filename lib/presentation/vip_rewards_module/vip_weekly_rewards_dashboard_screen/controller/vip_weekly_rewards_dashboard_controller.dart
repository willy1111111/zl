import 'package:get/get.dart';
import '../models/vip_weekly_rewards_dashboard_model.dart';
import '../../../../core/app_export.dart';

class VipWeeklyRewardsDashboardController extends GetxController {
  Rx<VipWeeklyRewardsDashboardModel> vipWeeklyRewardsDashboardModelObj =
      VipWeeklyRewardsDashboardModel().obs;

  RxBool showSuccessNotification = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onAddFundsPressed() {
    // Handle add funds action
  }

  void onVipUpgradePressed() {
    // Handle VIP upgrade card tap
  }

  void onWeeklySalaryPressed() {
    // Handle weekly salary card tap
  }

  void onBirthdayBonusPressed() {
    // Handle birthday bonus card tap
  }

  void onSalaryCardPressed() {
    // Handle salary card tap
  }

  void showSuccessMessage() {
    showSuccessNotification.value = true;
    Future.delayed(Duration(seconds: 2), () {
      showSuccessNotification.value = false;
    });
  }
}
