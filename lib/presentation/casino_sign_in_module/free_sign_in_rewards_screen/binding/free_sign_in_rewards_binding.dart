import 'package:get/get.dart';
import '../controller/free_sign_in_rewards_controller.dart';
import '../../../../../core/app_export.dart';

class FreeSignInRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FreeSignInRewardsController());
  }
}
