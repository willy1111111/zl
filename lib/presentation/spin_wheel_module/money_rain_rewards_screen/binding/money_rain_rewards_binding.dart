import 'package:get/get.dart';
import '../controller/money_rain_rewards_controller.dart';

import '../../../core/app_export.dart';

class MoneyRainRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoneyRainRewardsController());
  }
}
