import 'package:get/get.dart';

import '../controller/gaming_casino_vip_rewards_controller.dart';

import '../../../core/app_export.dart';

class GamingCasinoVipRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingCasinoVipRewardsController());
  }
}
