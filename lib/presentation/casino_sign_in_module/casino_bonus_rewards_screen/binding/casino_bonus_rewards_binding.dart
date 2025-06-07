import 'package:get/get.dart';
import '../controller/casino_bonus_rewards_controller.dart';
import '../../../../../core/app_export.dart';

class CasinoBonusRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CasinoBonusRewardsController());
  }
}
