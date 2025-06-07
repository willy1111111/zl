import 'package:get/get.dart';
import '../controller/rewards_congratulations_controller.dart';
import '../../../core/app_export.dart';

class RewardsCongratulationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RewardsCongratulationsController());
  }
}
