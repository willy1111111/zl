import 'package:get/get.dart';
import '../controller/gaming_experience_bonus_activation_screen_two_controller.dart';
import '../../../core/app_export.dart';

class GamingExperienceBonusActivationScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingExperienceBonusActivationScreenTwoController());
  }
}
