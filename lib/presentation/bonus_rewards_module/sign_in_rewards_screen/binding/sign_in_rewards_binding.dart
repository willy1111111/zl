import 'package:get/get.dart';
import '../controller/sign_in_rewards_controller.dart';
import '../../../../../core/app_export.dart';

class SignInRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInRewardsController());
  }
}
