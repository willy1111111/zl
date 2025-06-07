import 'package:get/get.dart';
import '../controller/achievement_rewards_controller.dart';
import '../../../../core/app_export.dart';

class AchievementRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AchievementRewardsController());
  }
}
