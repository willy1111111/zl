import 'package:get/get.dart';
import '../controller/achievement_bonus_received_controller.dart';
import '../../../core/app_export.dart';

class AchievementBonusReceivedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AchievementBonusReceivedController());
  }
}
