import 'package:get/get.dart';
import '../controller/vip_monthly_salary_details_controller.dart';
import '../../../../core/app_export.dart';

class VipMonthlySalaryDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipMonthlySalaryDetailsController());
  }
}
