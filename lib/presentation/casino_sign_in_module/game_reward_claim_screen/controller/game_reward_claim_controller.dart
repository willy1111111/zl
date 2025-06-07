import '../models/game_reward_claim_model.dart';
import '../../../../../core/app_export.dart';

class GameRewardClaimController extends GetxController {
  Rx<GameRewardClaimModel?> gameRewardClaimModel =
      Rx<GameRewardClaimModel?>(null);
  RxBool isClaimProcessing = false.obs;

  @override
  void onInit() {
    super.onInit();
    gameRewardClaimModel.value = GameRewardClaimModel();
  }

  void onClaimPressed() {
    if (isClaimProcessing.value) return;

    isClaimProcessing.value = true;

    // Simulate claim processing
    Future.delayed(Duration(seconds: 1), () {
      isClaimProcessing.value = false;
      Get.snackbar(
        'Success',
        'Reward claimed successfully!',
        backgroundColor: appTheme.colorFF0C6E,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );
    });
  }

  void onClosePressed() {
    Get.back();
  }
}
