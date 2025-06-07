import 'package:get/get.dart';
import '../controller/jbet88_vip_rewards_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class Jbet88VipRewardsDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Jbet88VipRewardsDashboardController());
  }
}
