import 'package:get/get.dart';
import '../controller/spin_bonus_leaderboard_controller.dart';
import '../../../core/app_export.dart';

class SpinBonusLeaderboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpinBonusLeaderboardController());
  }
}
