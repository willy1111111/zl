import 'package:flutter/material.dart';
import '../models/gaming_experience_bonus_activation_screen_two_model.dart';
import '../../../core/app_export.dart';

class GamingExperienceBonusActivationScreenTwoController
    extends GetxController {
  late TextEditingController phoneController;

  // Observable variables
  RxBool isPhoneVerified = false.obs;
  RxBool isDepositCompleted = false.obs;
  RxBool isLoading = false.obs;
  Rx<GamingExperienceBonusActivationScreenTwoModel> model =
      GamingExperienceBonusActivationScreenTwoModel().obs;

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();
    initializeModel();
  }

  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }

  void initializeModel() {
    model.value = GamingExperienceBonusActivationScreenTwoModel(
      bonusAmount: '৳12.00'.obs,
      experienceTitle: 'Experience'.obs,
      verificationTitle: 'Phone verification'.obs,
      depositTitle: 'Deposit any amount'.obs,
      verifyButtonText: 'Verify'.obs,
      depositButtonText: 'Deposit'.obs,
    );
  }

  void onVerifyPressed() {
    // Handle phone verification
    isLoading.value = true;

    // Simulate verification process
    Future.delayed(Duration(seconds: 2), () {
      isPhoneVerified.value = true;
      isLoading.value = false;

      Get.snackbar(
        'Success',
        'Phone verification completed successfully',
        backgroundColor: appTheme.colorFF85D4,
        colorText: appTheme.whiteCustom,
        duration: Duration(seconds: 2),
      );

      checkBothRequirementsCompleted();
    });
  }

  void onDepositPressed() {
    // Navigate to deposit screen or handle deposit action
    isLoading.value = true;

    // Simulate deposit process
    Future.delayed(Duration(seconds: 2), () {
      isDepositCompleted.value = true;
      isLoading.value = false;

      Get.snackbar(
        'Success',
        'Deposit completed successfully',
        backgroundColor: appTheme.colorFF85D4,
        colorText: appTheme.whiteCustom,
        duration: Duration(seconds: 2),
      );

      checkBothRequirementsCompleted();
    });
  }

  void checkBothRequirementsCompleted() {
    if ((isPhoneVerified.value ?? false) &&
        (isDepositCompleted.value ?? false)) {
      // Both requirements completed, show success message
      Get.snackbar(
        'Bonus Activated!',
        'Experience bonus ৳12.00 has been activated. You can play immediately!',
        backgroundColor: appTheme.colorFFFFC6,
        colorText: appTheme.blackCustom,
        duration: Duration(seconds: 3),
      );

      // Auto close after showing success
      Future.delayed(Duration(seconds: 3), () {
        onClosePressed();
      });
    }
  }

  void onClosePressed() {
    Get.back();
  }
}
