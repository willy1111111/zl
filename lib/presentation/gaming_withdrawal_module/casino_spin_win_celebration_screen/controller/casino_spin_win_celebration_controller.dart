import 'dart:async';
import '../models/casino_spin_win_celebration_model.dart';
import '../../../core/app_export.dart';

class CasinoSpinWinCelebrationController extends GetxController {
  Rx<CasinoSpinWinCelebrationModel?> casinoSpinWinCelebrationModel =
      Rx<CasinoSpinWinCelebrationModel?>(null);
  RxInt countdown = 3.obs;
  RxBool isButtonEnabled = true.obs;
  Timer? countdownTimer;

  @override
  void onInit() {
    super.onInit();
    casinoSpinWinCelebrationModel.value = CasinoSpinWinCelebrationModel();
    startCountdown();
  }

  @override
  void onClose() {
    countdownTimer?.cancel();
    super.onClose();
  }

  void startCountdown() {
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (countdown.value > 0) {
        countdown.value--;
      } else {
        timer.cancel();
        isButtonEnabled.value = false;
      }
    });
  }

  String getCountdownButtonText() {
    return 'Get right now ( ${countdown.value}s )';
  }

  void claimWinnings() {
    if (isButtonEnabled.value) {
      countdownTimer?.cancel();
      isButtonEnabled.value = false;

      // Show success message
      Get.snackbar(
        'Success',
        'Winnings claimed successfully!',
        backgroundColor: appTheme.colorFF76CD,
        colorText: appTheme.whiteCustom,
        duration: Duration(seconds: 2),
      );

      // Navigate back or to next screen after delay
      Future.delayed(Duration(seconds: 2), () {
        Get.back();
      });
    }
  }
}
