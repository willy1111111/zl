import 'package:get/get.dart';
import '../controller/experience_bonus_game_screen_two_controller.dart';
import '../../../core/app_export.dart';

class ExperienceBonusGameScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExperienceBonusGameScreenTwoController());
  }
}
