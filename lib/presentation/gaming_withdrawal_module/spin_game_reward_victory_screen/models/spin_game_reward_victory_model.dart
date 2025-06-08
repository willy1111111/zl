import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [SpinGameRewardVictoryScreen] screen with GetX.

class SpinGameRewardVictoryModel {
  Rx<String>? prizeAmount;
  Rx<String>? victoryMessage;
  Rx<bool>? isAnimationComplete;
  Rx<bool>? canClaim;

  SpinGameRewardVictoryModel({
    this.prizeAmount,
    this.victoryMessage,
    this.isAnimationComplete,
    this.canClaim,
  }) {
    prizeAmount = prizeAmount ?? '+₱ 1.232'.obs;
    victoryMessage = victoryMessage ?? "YOU'VE WON!".obs;
    isAnimationComplete = isAnimationComplete ?? false.obs;
    canClaim = canClaim ?? false.obs;
  }
}
