import 'package:get/get.dart';
import '../controller/vip_monthly_salary_controller.dart';
import '../../../core/app_export.dart';

class VipMonthlySalaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipMonthlySalaryController());
  }
}
