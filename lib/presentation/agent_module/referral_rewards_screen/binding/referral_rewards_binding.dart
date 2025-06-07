import 'package:get/get.dart';
import '../controller/referral_rewards_controller.dart';
import '../../../../core/app_export.dart';

class ReferralRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReferralRewardsController());
  }
}
