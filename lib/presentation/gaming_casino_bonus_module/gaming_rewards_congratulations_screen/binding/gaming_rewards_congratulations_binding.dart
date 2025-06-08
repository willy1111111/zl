import 'package:get/get.dart';
import '../controller/gaming_rewards_congratulations_controller.dart';
import '../../../core/app_export.dart';

class GamingRewardsCongratulationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingRewardsCongratulationsController());
  }
}
