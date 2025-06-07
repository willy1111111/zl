import 'package:get/get.dart';
import '../controller/vip_weekly_salary_submitted_controller.dart';
import '../../../../core/app_export.dart';

class VipWeeklySalarySubmittedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipWeeklySalarySubmittedController());
  }
}
