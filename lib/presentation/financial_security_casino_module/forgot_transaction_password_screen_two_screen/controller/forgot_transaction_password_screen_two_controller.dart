import '../models/forgot_transaction_password_screen_two_model.dart';

import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

class ForgotTransactionPasswordScreenTwoController extends GetxController {
  late TextEditingController phoneController;
  late TextEditingController newPasswordController;
  late TextEditingController confirmPasswordController;

  Rx<ForgotTransactionPasswordScreenTwoModel>
      forgotTransactionPasswordScreenTwoModel =
      ForgotTransactionPasswordScreenTwoModel().obs;

  RxString phoneNumber = ''.obs;
  RxString newPassword = ''.obs;
  RxString confirmPassword = ''.obs;
  RxBool isNewPasswordVisible = false.obs;
  RxBool isConfirmPasswordVisible = false.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();
    newPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();

    // Set initial phone number value
    phoneController.text = '123456789';
    phoneNumber.value = '123456789';
  }

  @override
  void onClose() {
    phoneController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  void sendSMSCode() {
    if (phoneNumber.value.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter phone number',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    Get.snackbar(
      'SMS Sent',
      'SMS verification code sent!',
      backgroundColor: appTheme.colorFF76CD,
      colorText: appTheme.whiteCustom,
    );
  }

  void toggleNewPasswordVisibility() {
    isNewPasswordVisible.value = !(isNewPasswordVisible.value ?? false);
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !(isConfirmPasswordVisible.value ?? false);
  }

  void confirmPasswordReset() {
    if (newPassword.value.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter new password',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    if (confirmPassword.value.isEmpty) {
      Get.snackbar(
        'Error',
        'Please confirm your password',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    if (newPassword.value != confirmPassword.value) {
      Get.snackbar(
        'Error',
        'Passwords do not match',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    isLoading.value = true;

    // Simulate API call
    Future.delayed(Duration(seconds: 2), () {
      isLoading.value = false;
      Get.snackbar(
        'Success',
        'Password reset confirmed!',
        backgroundColor: appTheme.colorFF76CD,
        colorText: appTheme.whiteCustom,
      );

      // Navigate back or to another screen
      Get.back();
    });
  }
}
