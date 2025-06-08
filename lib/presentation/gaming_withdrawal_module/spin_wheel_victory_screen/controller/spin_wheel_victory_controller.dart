import 'package:flutter/material.dart';
import 'dart:async';
import '../models/spin_wheel_victory_model.dart';
import '../../../core/app_export.dart';

class SpinWheelVictoryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Timer countdownTimer;

  SpinWheelVictoryModel spinWheelVictoryModel = SpinWheelVictoryModel();

  RxDouble wheelScale = 1.0.obs;
  RxString buttonText = 'Get right now ( 3s )'.obs;
  RxInt countdown = 3.obs;
  RxBool isCountdownActive = true.obs;

  @override
  void onInit() {
    super.onInit();
    initializeAnimation();
    startCountdown();
  }

  @override
  void onReady() {
    super.onReady();
    startCelebrationAnimation();
  }

  @override
  void onClose() {
    animationController.dispose();
    countdownTimer.cancel();
    super.onClose();
  }

  void initializeAnimation() {
    animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
  }

  void startCelebrationAnimation() {
    animationController.repeat(reverse: true);

    animationController.addListener(() {
      wheelScale.value = 1.0 + (animationController.value * 0.05);
    });
  }

  void startCountdown() {
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (countdown.value > 0) {
        countdown.value--;
        updateButtonText();
      } else {
        timer.cancel();
        isCountdownActive.value = false;
        buttonText.value = 'Claim Now!';
      }
    });
  }

  void updateButtonText() {
    if (countdown.value > 0) {
      buttonText.value = 'Get right now ( ${countdown.value}s )';
    }
  }

  void onClaimPressed() {
    // Handle claim action
    print('Prize claimed!');

    // Stop animations
    animationController.stop();
    countdownTimer.cancel();

    // Could navigate to next screen or show success message
    Get.snackbar(
      'Success',
      'Prize claimed successfully!',
      backgroundColor: appTheme.colorFF76CD,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }
}
