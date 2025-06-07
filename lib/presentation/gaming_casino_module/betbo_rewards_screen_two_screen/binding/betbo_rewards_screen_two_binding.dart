import 'package:get/get.dart';
import '../controller/betbo_rewards_screen_two_controller.dart';
import '../../../../../core/app_export.dart';

class BetboRewardsScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BetboRewardsScreenTwoController());
  }
}
