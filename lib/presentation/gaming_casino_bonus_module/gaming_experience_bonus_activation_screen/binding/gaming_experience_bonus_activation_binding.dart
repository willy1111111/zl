import 'package:get/get.dart';
import '../controller/gaming_experience_bonus_activation_controller.dart';
import '../../../core/app_export.dart';

class GamingExperienceBonusActivationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingExperienceBonusActivationController());
  }
}
