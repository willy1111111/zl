import 'package:get/get.dart';
import '../controller/game_reward_claim_controller.dart';
import '../../../../../core/app_export.dart';

class GameRewardClaimBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GameRewardClaimController());
  }
}
