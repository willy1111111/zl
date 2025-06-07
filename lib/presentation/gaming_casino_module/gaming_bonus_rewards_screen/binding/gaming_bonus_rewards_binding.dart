import 'package:get/get.dart';
import '../controller/gaming_bonus_rewards_controller.dart';
import '../../../../../core/app_export.dart';

class GamingBonusRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingBonusRewardsController());
  }
}
