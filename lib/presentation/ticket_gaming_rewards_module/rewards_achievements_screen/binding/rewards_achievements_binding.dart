import 'package:get/get.dart';
import '../controller/rewards_achievements_controller.dart';
import '../../../core/app_export.dart';

class RewardsAchievementsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RewardsAchievementsController());
  }
}
