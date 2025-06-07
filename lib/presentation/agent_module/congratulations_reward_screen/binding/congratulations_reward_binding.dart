import 'package:get/get.dart';
import '../controller/congratulations_reward_controller.dart';
import '../../../../core/app_export.dart';

class CongratulationsRewardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CongratulationsRewardController());
  }
}
