import 'package:get/get.dart';

import '../../../../../core/app_export.dart';
import '../controller/vip_daily_salary_dashboard_controller.dart';

/// A binding class for the VipDailySalaryDashboardScreen.
class VipDailySalaryDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipDailySalaryDashboardController());
  }
}
