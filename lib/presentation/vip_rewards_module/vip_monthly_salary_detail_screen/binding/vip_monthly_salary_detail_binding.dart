import 'package:get/get.dart';
import '../controller/vip_monthly_salary_detail_controller.dart';
import '../../../core/app_export.dart';

class VipMonthlySalaryDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipMonthlySalaryDetailController());
  }
}
