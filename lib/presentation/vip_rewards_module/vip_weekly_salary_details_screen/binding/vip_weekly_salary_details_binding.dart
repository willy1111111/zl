import 'package:get/get.dart';
import '../controller/vip_weekly_salary_details_controller.dart';
import '../../../../core/app_export.dart';

class VipWeeklySalaryDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipWeeklySalaryDetailsController());
  }
}
