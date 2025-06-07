import 'package:get/get.dart';
import '../controller/daily_sign_in_rewards_controller.dart';
import '../../../../../core/app_export.dart';

class DailySignInRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DailySignInRewardsController());
  }
}
