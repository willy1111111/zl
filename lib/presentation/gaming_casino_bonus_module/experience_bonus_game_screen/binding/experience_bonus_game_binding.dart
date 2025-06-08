import 'package:get/get.dart';
import '../controller/experience_bonus_game_controller.dart';
import '../../../core/app_export.dart';

class ExperienceBonusGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExperienceBonusGameController());
  }
}
