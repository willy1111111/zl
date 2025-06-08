import 'package:get/get.dart';
import '../controller/spin_game_reward_victory_controller.dart';
import '../../../core/app_export.dart';

class SpinGameRewardVictoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpinGameRewardVictoryController());
  }
}
