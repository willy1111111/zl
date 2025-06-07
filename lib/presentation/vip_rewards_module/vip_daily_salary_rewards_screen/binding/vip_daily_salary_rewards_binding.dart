import 'package:get/get.dart';
import '../controller/vip_daily_salary_rewards_controller.dart';
import '../../../../core/app_export.dart';

class VipDailySalaryRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipDailySalaryRewardsController());
  }
}
