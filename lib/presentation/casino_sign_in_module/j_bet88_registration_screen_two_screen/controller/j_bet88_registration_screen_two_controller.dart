import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/j_bet88_registration_screen_two_model.dart';

class JBet88RegistrationScreenTwoController extends GetxController {
  late TextEditingController phoneController;
  late TextEditingController passwordController;

  Rx<JBet88RegistrationScreenTwoModel> registrationModel =
      JBet88RegistrationScreenTwoModel().obs;

  RxString phoneNumber = '1234567890'.obs;
  RxString password = ''.obs;
  RxBool isPasswordVisible = false.obs;
  RxBool agreeToTerms = true.obs;
  RxBool agreeToMarketing = true.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController(text: phoneNumber.value);
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    phoneController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void onEditPhonePressed() {
    // Handle phone edit action
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !(isPasswordVisible.value ?? false);
  }

  void onReferralDropdownPressed() {
    // Handle referral dropdown action
  }

  void toggleTermsAgreement() {
    agreeToTerms.value = !(agreeToTerms.value ?? false);
  }

  void toggleMarketingAgreement() {
    agreeToMarketing.value = !(agreeToMarketing.value ?? false);
  }

  void onRegisterPressed() {
    if (_validateForm()) {
      isLoading.value = true;
      // Simulate registration process
      Future.delayed(Duration(seconds: 2), () {
        isLoading.value = false;
        Get.toNamed(AppRoutes.registrationSuccessScreen);
      });
    }
  }

  void onForgotPasswordPressed() {
    // Handle forgot password navigation
  }

  void onLoginPressed() {
    Get.toNamed(AppRoutes.jBet88LoginScreen);
  }

  void onGoogleLoginPressed() {
    // Handle Google login
  }

  void onTelegramLoginPressed() {
    // Handle Telegram login
  }

  bool _validateForm() {
    if (phoneNumber.value.isEmpty ?? true) {
      Get.snackbar('Error', 'Please enter phone number');
      return false;
    }

    if (password.value.isEmpty ?? true) {
      Get.snackbar('Error', 'Please enter password');
      return false;
    }

    if (!(agreeToTerms.value ?? false)) {
      Get.snackbar('Error', 'Please agree to User Agreement');
      return false;
    }

    return true;
  }
}
