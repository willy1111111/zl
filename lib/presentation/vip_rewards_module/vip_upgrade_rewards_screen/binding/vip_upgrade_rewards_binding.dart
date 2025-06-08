import 'package:get/get.dart';
import '../controller/vip_upgrade_rewards_controller.dart';
import '../../../../../core/app_export.dart';

class VipUpgradeRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipUpgradeRewardsController());
  }
}
