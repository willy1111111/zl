import 'package:get/get.dart';
import '../controller/achievement_bonus_controller.dart';
import '../../../../../core/app_export.dart';

class AchievementBonusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AchievementBonusController());
  }
}
