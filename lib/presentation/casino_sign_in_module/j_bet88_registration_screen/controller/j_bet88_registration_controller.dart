import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/j_bet88_registration_model.dart';

class JBet88RegistrationController extends GetxController {
  late TextEditingController passwordController;
  late TextEditingController referralController;

  Rx<JBet88RegistrationModel?> registrationModel =
      Rx<JBet88RegistrationModel?>(null);
  RxBool isPasswordVisible = false.obs;
  RxBool isReferralSectionExpanded = false.obs;

  @override
  void onInit() {
    super.onInit();
    passwordController = TextEditingController();
    referralController = TextEditingController();
    registrationModel.value = JBet88RegistrationModel();
  }

  @override
  void onClose() {
    passwordController.dispose();
    referralController.dispose();
    super.onClose();
  }

  void onEditPhoneNumber() {
    // Handle phone number edit functionality
    print('Edit phone number pressed');
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void onExpandReferralSection() {
    isReferralSectionExpanded.value = !isReferralSectionExpanded.value;
  }

  void toggleUserAgreement() {
    bool currentValue =
        registrationModel.value?.isUserAgreementAccepted?.value ?? false;
    registrationModel.value?.isUserAgreementAccepted?.value = !currentValue;
    registrationModel.refresh();
  }

  void toggleMarketingAgreement() {
    bool currentValue =
        registrationModel.value?.isMarketingAgreementAccepted?.value ?? false;
    registrationModel.value?.isMarketingAgreementAccepted?.value =
        !currentValue;
    registrationModel.refresh();
  }

  void onRegisterPressed() {
    // Validate form and proceed with registration
    bool userAgreementAccepted =
        registrationModel.value?.isUserAgreementAccepted?.value ?? false;

    if (!userAgreementAccepted) {
      Get.snackbar(
        'Error',
        'Please accept the User Agreement to continue',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    if (passwordController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter a password',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    // Navigate to phone verification screen
    Get.toNamed(AppRoutes.phoneVerificationScreen);
  }

  void onForgotPasswordPressed() {
    // Handle forgot password navigation
    print('Forgot password pressed');
  }

  void onLoginPressed() {
    // Navigate to login screen
    Get.toNamed(AppRoutes.jBet88LoginScreen);
  }

  void onGoogleLoginPressed() {
    // Handle Google login
    print('Google login pressed');
  }

  void onTelegramLoginPressed() {
    // Handle Telegram login
    print('Telegram login pressed');
  }
}
