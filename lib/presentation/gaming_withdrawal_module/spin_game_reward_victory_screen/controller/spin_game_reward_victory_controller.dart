import 'dart:async';
import 'package:get/get.dart';
import '../models/spin_game_reward_victory_model.dart';
import '../../../core/app_export.dart';

class SpinGameRewardVictoryController extends GetxController {
  Rx<SpinGameRewardVictoryModel?> spinGameRewardVictoryModel =
      Rx<SpinGameRewardVictoryModel?>(null);

  RxString buttonText = 'Get right now ( 3s )'.obs;
  RxInt countdown = 3.obs;
  RxBool isCountingDown = true.obs;
  RxBool isClaimed = false.obs;

  Timer? countdownTimer;

  @override
  void onInit() {
    super.onInit();
    spinGameRewardVictoryModel.value = SpinGameRewardVictoryModel();
    startCountdown();
  }

  @override
  void onClose() {
    countdownTimer?.cancel();
    super.onClose();
  }

  void startCountdown() {
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      countdown.value--;

      if (countdown.value > 0) {
        buttonText.value = 'Get right now ( ${countdown.value}s )';
      } else {
        buttonText.value = 'Claim Now!';
        isCountingDown.value = false;
        timer.cancel();
      }
    });
  }

  void handleClaimButtonTap() {
    if (countdown.value <= 0 && !isClaimed.value) {
      isClaimed.value = true;
      buttonText.value = 'Claimed!';
      isCountingDown.value = false;

      // Handle claim logic here
      // For example, navigate to another screen or show success message
      Get.snackbar(
        'Success',
        'Prize claimed successfully!',
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: 2),
      );
    }
  }
}
