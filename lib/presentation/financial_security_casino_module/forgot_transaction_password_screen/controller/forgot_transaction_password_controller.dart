import 'package:flutter/material.dart';
import '../models/forgot_transaction_password_model.dart';
import '../../../core/app_export.dart';

class ForgotTransactionPasswordController extends GetxController {
  late TextEditingController phoneController;
  late TextEditingController newPasswordController;
  late TextEditingController confirmPasswordController;

  Rx<ForgotTransactionPasswordModel> forgotTransactionPasswordModelObj =
      ForgotTransactionPasswordModel().obs;

  RxBool isNewPasswordVisible = false.obs;
  RxBool isConfirmPasswordVisible = false.obs;
  RxBool isLoading = false.obs;
  RxString phoneNumber = '12'.obs;
  RxString newPassword = ''.obs;
  RxString confirmPassword = ''.obs;

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController(text: phoneNumber.value);
    newPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void onClose() {
    phoneController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  void updatePhoneNumber(String value) {
    phoneNumber.value = value;
  }

  void updateNewPassword(String value) {
    newPassword.value = value;
  }

  void updateConfirmPassword(String value) {
    confirmPassword.value = value;
  }

  void toggleNewPasswordVisibility() {
    isNewPasswordVisible.value = !(isNewPasswordVisible.value ?? false);
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !(isConfirmPasswordVisible.value ?? false);
  }

  void sendSms() {
    if (phoneNumber.value.isNotEmpty) {
      Get.snackbar(
        'SMS Sent',
        'SMS sent successfully!',
        backgroundColor: appTheme.greenCustom,
        colorText: appTheme.whiteCustom,
      );
    } else {
      Get.snackbar(
        'Error',
        'Please enter a valid phone number',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
    }
  }

  void confirmPasswordReset() {
    if (newPassword.value.isEmpty || confirmPassword.value.isEmpty) {
      Get.snackbar(
        'Error',
        'Please fill in all required fields.',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    if (newPassword.value != confirmPassword.value) {
      Get.snackbar(
        'Error',
        'Passwords do not match. Please try again.',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    isLoading.value = true;

    Future.delayed(Duration(seconds: 2), () {
      isLoading.value = false;
      Get.snackbar(
        'Success',
        'Transaction password updated successfully!',
        backgroundColor: appTheme.greenCustom,
        colorText: appTheme.whiteCustom,
      );
      Get.back();
    });
  }
}
