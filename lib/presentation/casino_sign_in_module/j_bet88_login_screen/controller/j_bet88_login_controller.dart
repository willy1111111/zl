import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/j_bet88_login_model.dart';

class JBet88LoginController extends GetxController {
  late TextEditingController passwordController;
  late TextEditingController verificationCodeController;

  Rx<JBet88LoginModel> jBet88LoginModel = JBet88LoginModel().obs;

  RxBool isPasswordVisible = false.obs;
  RxBool isLoading = false.obs;
  RxBool isKeyboardVisible = false.obs;

  @override
  void onInit() {
    super.onInit();
    passwordController = TextEditingController();
    verificationCodeController = TextEditingController();
    jBet88LoginModel.value = JBet88LoginModel();
  }

  @override
  void onClose() {
    passwordController.dispose();
    verificationCodeController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void editPhoneNumber() {
    isKeyboardVisible.value = true;
  }

  void handleLogin() async {
    if (passwordController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter your password',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    if (verificationCodeController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter verification code',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    try {
      isLoading.value = true;

      await Future.delayed(Duration(seconds: 2));

      Get.snackbar(
        'Success',
        'Login successful',
        backgroundColor: appTheme.greenCustom,
        colorText: appTheme.whiteCustom,
      );

      Get.toNamed(AppRoutes.userAgreementScreen);
    } catch (e) {
      Get.snackbar(
        'Error',
        'Login failed. Please try again.',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
    } finally {
      isLoading.value = false;
    }
  }

  void handleGoogleLogin() {
    Get.snackbar(
      'Info',
      'Google login functionality will be implemented',
      backgroundColor: appTheme.blueCustom,
      colorText: appTheme.whiteCustom,
    );
  }

  void navigateToForgotPassword() {
    Get.snackbar(
      'Info',
      'Forgot password functionality will be implemented',
      backgroundColor: appTheme.orangeCustom,
      colorText: appTheme.whiteCustom,
    );
  }

  void navigateToRegister() {
    Get.toNamed(AppRoutes.jBet88RegistrationScreen);
  }

  void handleKeyPress(String key) {
    if (key == ' ') {
      jBet88LoginModel.value.currentInput?.value =
          (jBet88LoginModel.value.currentInput?.value ?? '') + ' ';
    } else {
      jBet88LoginModel.value.currentInput?.value =
          (jBet88LoginModel.value.currentInput?.value ?? '') + key;
    }

    // Modified: Removed undefined vibrate method call
    // Simulated haptic feedback can be implemented with HapticFeedback.lightImpact() if needed
  }

  void handleBackspace() {
    String currentText = jBet88LoginModel.value.currentInput?.value ?? '';
    if (currentText.isNotEmpty) {
      jBet88LoginModel.value.currentInput?.value =
          currentText.substring(0, currentText.length - 1);
    }
  }

  void handleReturn() {
    isKeyboardVisible.value = false;
  }

  void toggleKeyboardMode() {
    jBet88LoginModel.value.isAlphaKeyboard?.value =
        !(jBet88LoginModel.value.isAlphaKeyboard?.value ?? false);
  }
}
