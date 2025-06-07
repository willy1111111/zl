import 'package:get/get.dart';
import '../controller/vip_weekly_rewards_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class VipWeeklyRewardsDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipWeeklyRewardsDashboardController());
  }
}
