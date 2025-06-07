import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/j_bet88_registration_screen_three_model.dart';

class JBet88RegistrationScreenThreeController extends GetxController {
  late TextEditingController passwordController;
  late TextEditingController verificationCodeController;

  Rx<JBet88RegistrationScreenThreeModel?> jBet88RegistrationScreenThreeModel =
      Rx<JBet88RegistrationScreenThreeModel?>(null);

  Rx<String>? phoneNumber = '1234567890'.obs;
  Rx<bool>? isPasswordVisible = false.obs;
  Rx<bool>? isUserAgreementAccepted = false.obs;
  Rx<bool>? isMarketingAgreementAccepted = false.obs;
  Rx<bool>? isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    passwordController = TextEditingController();
    verificationCodeController = TextEditingController();
    jBet88RegistrationScreenThreeModel.value =
        JBet88RegistrationScreenThreeModel();
  }

  @override
  void onClose() {
    passwordController.dispose();
    verificationCodeController.dispose();
    super.onClose();
  }

  void editPhoneNumber() {
    // Navigate to phone number editing screen or show dialog
    Get.snackbar(
      'Edit Phone',
      'Phone number editing functionality',
      backgroundColor: appTheme.colorFF1B1C,
      colorText: appTheme.whiteCustom,
    );
  }

  void togglePasswordVisibility() {
    isPasswordVisible?.value = !(isPasswordVisible?.value ?? false);
  }

  void sendVerificationCode() {
    // Send verification code logic
    Get.snackbar(
      'Verification Code',
      'Verification code sent successfully',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  void toggleUserAgreement() {
    isUserAgreementAccepted?.value = !(isUserAgreementAccepted?.value ?? false);
  }

  void toggleMarketingAgreement() {
    isMarketingAgreementAccepted?.value =
        !(isMarketingAgreementAccepted?.value ?? false);
  }

  void register() async {
    if (!(isUserAgreementAccepted?.value ?? false)) {
      Get.snackbar(
        'Agreement Required',
        'Please accept the user agreement to continue',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    if (passwordController.text.isEmpty) {
      Get.snackbar(
        'Password Required',
        'Please enter your password',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    if (verificationCodeController.text.isEmpty) {
      Get.snackbar(
        'Verification Code Required',
        'Please enter the verification code',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    isLoading?.value = true;

    // Simulate registration API call
    await Future.delayed(Duration(seconds: 2));

    isLoading?.value = false;

    // Navigate to success screen
    Get.toNamed(AppRoutes.registrationSuccessScreen);
  }

  void forgotPassword() {
    // Navigate to forgot password screen
    Get.snackbar(
      'Forgot Password',
      'Forgot password functionality',
      backgroundColor: appTheme.colorFF1B1C,
      colorText: appTheme.whiteCustom,
    );
  }

  void navigateToLogin() {
    Get.toNamed(AppRoutes.jBet88LoginScreen);
  }

  void loginWithGoogle() {
    // Google login functionality
    Get.snackbar(
      'Google Login',
      'Google login functionality',
      backgroundColor: appTheme.colorFF3F6B,
      colorText: appTheme.whiteCustom,
    );
  }
}
