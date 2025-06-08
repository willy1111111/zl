import 'package:flutter/material.dart';
import '../models/jbet88_benefits_promotion_model.dart';
import '../../../core/app_export.dart';

class Jbet88BenefitsPromotionController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController floatingAnimationController;
  late AnimationController pulseAnimationController;
  late Animation<double> floatingAnimation;
  late Animation<double> pulseAnimation;

  Rx<Jbet88BenefitsPromotionModel?> jbet88BenefitsPromotionModel =
      Rx<Jbet88BenefitsPromotionModel?>(null);

  @override
  void onInit() {
    super.onInit();

    // Initialize floating animation
    floatingAnimationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    floatingAnimation = Tween<double>(
      begin: 0.0,
      end: -10.0,
    ).animate(CurvedAnimation(
      parent: floatingAnimationController,
      curve: Curves.easeInOut,
    ));

    // Initialize pulse animation
    pulseAnimationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    pulseAnimation = Tween<double>(
      begin: 1.0,
      end: 1.05,
    ).animate(CurvedAnimation(
      parent: pulseAnimationController,
      curve: Curves.easeInOut,
    ));

    // Start animations
    floatingAnimationController.repeat(reverse: true);
    pulseAnimationController.repeat(reverse: true);

    // Initialize model
    jbet88BenefitsPromotionModel.value = Jbet88BenefitsPromotionModel();
  }

  @override
  void onClose() {
    floatingAnimationController.dispose();
    pulseAnimationController.dispose();
    super.onClose();
  }

  void onFloatingActionButtonPressed() {
    // Handle floating action button press
    Get.snackbar(
      'Info',
      'Floating action button pressed!',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onJoinButtonPressed() {
    // Handle join button press
    Get.snackbar(
      'Success',
      'Welcome to Jbet88! Join now to get benefits.',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF10B9,
      colorText: appTheme.whiteCustom,
    );
  }
}
