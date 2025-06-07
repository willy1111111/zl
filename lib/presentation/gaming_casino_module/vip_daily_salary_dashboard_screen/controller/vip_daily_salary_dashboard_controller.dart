import 'package:get/get.dart';

import '../../../../../core/app_export.dart';
import '../models/vip_daily_salary_dashboard_model.dart';

/// A controller class for the VipDailySalaryDashboardScreen.
class VipDailySalaryDashboardController extends GetxController {
  Rx<VipDailySalaryDashboardModel> vipDailySalaryDashboardModel =
      VipDailySalaryDashboardModel().obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  /// Initialize the VIP dashboard data
  void initializeData() {
    vipDailySalaryDashboardModel.value = VipDailySalaryDashboardModel(
      totalValidBetsToday: '₱100'.obs,
      estimatedSalaryToday: '₱2.00'.obs,
      salaryFromYesterday: '₱0'.obs,
    );
  }

  /// Update total valid bets for today
  void updateTotalValidBetsToday(String amount) {
    vipDailySalaryDashboardModel.value.totalValidBetsToday?.value = amount;
  }

  /// Update estimated salary for today
  void updateEstimatedSalaryToday(String amount) {
    vipDailySalaryDashboardModel.value.estimatedSalaryToday?.value = amount;
  }

  /// Update salary from yesterday
  void updateSalaryFromYesterday(String amount) {
    vipDailySalaryDashboardModel.value.salaryFromYesterday?.value = amount;
  }

  /// Refresh VIP dashboard data
  void refreshDashboardData() {
    // Simulate API call to refresh data
    Future.delayed(Duration(seconds: 1), () {
      initializeData();
    });
  }
}
