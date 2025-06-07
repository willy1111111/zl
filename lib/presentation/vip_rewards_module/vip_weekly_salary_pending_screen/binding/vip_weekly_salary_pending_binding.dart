import 'package:get/get.dart';
import '../controller/vip_weekly_salary_pending_controller.dart';
import '../../../../core/app_export.dart';

class VipWeeklySalaryPendingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipWeeklySalaryPendingController());
  }
}
