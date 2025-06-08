import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [CasinoSpinWinCelebrationScreen] screen with GetX.

class CasinoSpinWinCelebrationModel {
  Rx<String>? winText;
  Rx<String>? prizeAmount;
  Rx<String>? confirmationText;
  RxInt? countdownTime;
  RxBool? isClaimable;

  CasinoSpinWinCelebrationModel({
    String? winText,
    String? prizeAmount,
    String? confirmationText,
    int? countdownTime,
    bool? isClaimable,
  }) {
    this.winText = (winText ?? 'YOU\'VE WON!').obs;
    this.prizeAmount = (prizeAmount ?? '+₱ 1.232').obs;
    this.confirmationText =
        (confirmationText ?? 'The amount has been deposited into your account.')
            .obs;
    this.countdownTime = (countdownTime ?? 3).obs;
    this.isClaimable = (isClaimable ?? true).obs;
  }
}
