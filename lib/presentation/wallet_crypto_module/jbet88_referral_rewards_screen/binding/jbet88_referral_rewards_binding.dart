import 'package:get/get.dart';
import '../controller/jbet88_referral_rewards_controller.dart';
import '../../../core/app_export.dart';

class Jbet88ReferralRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Jbet88ReferralRewardsController());
  }
}
