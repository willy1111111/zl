import 'package:get/get.dart';
import '../controller/vip_daily_salary_claimed_controller.dart';
import '../../../../core/app_export.dart';

class VipDailySalaryClaimedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipDailySalaryClaimedController());
  }
}
