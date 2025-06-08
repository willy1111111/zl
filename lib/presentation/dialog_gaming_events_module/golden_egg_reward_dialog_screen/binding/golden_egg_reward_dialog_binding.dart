import 'package:get/get.dart';
import '../controller/golden_egg_reward_dialog_controller.dart';
import '../../../core/app_export.dart';

class GoldenEggRewardDialogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GoldenEggRewardDialogController());
  }
}
