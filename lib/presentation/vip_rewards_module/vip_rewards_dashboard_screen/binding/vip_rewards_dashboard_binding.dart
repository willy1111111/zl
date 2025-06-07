import 'package:get/get.dart';
import '../controller/vip_rewards_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class VipRewardsDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipRewardsDashboardController());
  }
}
