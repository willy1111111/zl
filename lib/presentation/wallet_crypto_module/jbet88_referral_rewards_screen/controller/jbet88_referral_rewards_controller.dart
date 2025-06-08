import 'package:flutter/material.dart';
import '../models/jbet88_referral_rewards_model.dart';
import '../../../core/app_export.dart';

class Jbet88ReferralRewardsController extends GetxController
    with GetTickerProviderStateMixin {
  Rx<Jbet88ReferralRewardsModel> jbet88ReferralRewardsModelObj =
      Jbet88ReferralRewardsModel().obs;

  late AnimationController floatingAnimationController;
  late Animation<double> floatingAnimation;

  late AnimationController pulseAnimationController;
  late Animation<double> pulseAnimation;

  @override
  void onInit() {
    super.onInit();

    // Initialize floating animation for dragon character
    floatingAnimationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    floatingAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: floatingAnimationController,
      curve: Curves.easeInOut,
    ));

    // Initialize pulse animation for side character
    pulseAnimationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    pulseAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: pulseAnimationController,
      curve: Curves.easeInOut,
    ));

    // Start animations
    floatingAnimationController.repeat(reverse: true);
    pulseAnimationController.repeat(reverse: true);
  }

  @override
  void onClose() {
    floatingAnimationController.dispose();
    pulseAnimationController.dispose();
    super.onClose();
  }

  void onSocialMediaTap(String platform) {
    Get.snackbar(
      'Share',
      'Opening $platform to share JBet88 referral link',
      backgroundColor: appTheme.colorFF00AD,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }

  void onReferralButtonTap() {
    Get.snackbar(
      'Referral Program',
      'Starting referral sharing process...',
      backgroundColor: appTheme.colorFF00AD,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }
}
