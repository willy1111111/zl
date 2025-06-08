import 'package:get/get.dart';
import '../controller/gaming_casino_vip_rewards_screen_two_controller.dart';
import '../../../core/app_export.dart';

class GamingCasinoVipRewardsScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingCasinoVipRewardsScreenTwoController());
  }
}
