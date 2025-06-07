import 'package:get/get.dart';
import '../controller/signed_in_rewards_controller.dart';
import '../../../../../core/app_export.dart';

class SignedInRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignedInRewardsController());
  }
}
