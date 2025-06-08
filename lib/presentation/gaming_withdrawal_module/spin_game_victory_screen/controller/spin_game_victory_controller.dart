import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

class SpinGameVictoryController extends GetxController
    with GetTickerProviderStateMixin {
  // Observable variables
  RxString buttonText = 'Get right now ( 3s )'.obs;
  RxInt countdown = 3.obs;
  RxDouble sparkleOpacity = 1.0.obs;
  RxDouble sparkleScale = 1.0.obs;
  RxDouble coinBounceOffset = 0.0.obs;

  // Animation controllers
  late AnimationController sparkleAnimationController;
  late AnimationController coinBounceAnimationController;
  late Animation<double> sparkleAnimation;
  late Animation<double> coinBounceAnimation;

  @override
  void onInit() {
    super.onInit();
    _initializeAnimations();
    _startCountdown();
    _startAnimations();
  }

  @override
  void onClose() {
    sparkleAnimationController.dispose();
    coinBounceAnimationController.dispose();
    super.onClose();
  }

  void _initializeAnimations() {
    // Sparkle animation
    sparkleAnimationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    sparkleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.7,
    ).animate(CurvedAnimation(
      parent: sparkleAnimationController,
      curve: Curves.easeInOut,
    ));

    // Coin bounce animation
    coinBounceAnimationController = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );

    coinBounceAnimation = Tween<double>(
      begin: 0.0,
      end: -10.0,
    ).animate(CurvedAnimation(
      parent: coinBounceAnimationController,
      curve: Curves.easeInOut,
    ));

    // Animation listeners
    sparkleAnimation.addListener(() {
      sparkleOpacity.value = sparkleAnimation.value;
      sparkleScale.value = 1.0 + (1.0 - sparkleAnimation.value) * 0.1;
    });

    coinBounceAnimation.addListener(() {
      coinBounceOffset.value = coinBounceAnimation.value;
    });
  }

  void _startAnimations() {
    // Start sparkle animation
    sparkleAnimationController.repeat(reverse: true);

    // Start coin bounce animation
    coinBounceAnimationController.repeat(reverse: true);
  }

  void _startCountdown() {
    Future.delayed(Duration(seconds: 1), () {
      if (countdown.value > 1) {
        countdown.value--;
        buttonText.value = 'Get right now ( ${countdown.value}s )';
        _startCountdown();
      } else {
        buttonText.value = 'Claim Now';
      }
    });
  }

  void claimPrize() {
    // Handle prize claim logic
    Get.snackbar(
      'Success',
      'Prize claimed successfully!',
      backgroundColor: appTheme.colorFF76CD,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );

    // Navigate back or to another screen
    Get.back();
  }
}
