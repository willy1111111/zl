import 'package:get/get.dart';
import '../controller/vip_daily_salary_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class VipDailySalaryDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipDailySalaryDashboardController());
  }
}
