import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/account_setup_completion_model.dart';

class AccountSetupCompletionController extends GetxController {
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  late TextEditingController referralCodeController;

  Rx<AccountSetupCompletionModel?> accountSetupModel =
      Rx<AccountSetupCompletionModel?>(null);
  RxBool isPasswordVisible = false.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    referralCodeController = TextEditingController();
    accountSetupModel.value = AccountSetupCompletionModel();
  }

  @override
  void onClose() {
    phoneController.dispose();
    passwordController.dispose();
    referralCodeController.dispose();
    super.onClose();
  }

  void updatePhoneNumber(String value) {
    if (accountSetupModel.value != null) {
      accountSetupModel.value!.phoneNumber?.value = value;
    }
  }

  void updateReferralCode(String value) {
    if (accountSetupModel.value != null) {
      accountSetupModel.value!.referralCode?.value = value;
    }
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  Future<void> signIn() async {
    if (phoneController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter your phone number',
        backgroundColor: appTheme.colorFFFF52,
        colorText: appTheme.colorFFFFFF,
      );
      return;
    }

    if (passwordController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter your password',
        backgroundColor: appTheme.colorFFFF52,
        colorText: appTheme.colorFFFFFF,
      );
      return;
    }

    isLoading.value = true;

    try {
      // Simulate API call for sign in
      await Future.delayed(Duration(seconds: 2));

      // Navigate to success screen or dashboard
      Get.snackbar(
        'Success',
        'Sign in successful',
        backgroundColor: appTheme.colorFF4CAF,
        colorText: appTheme.colorFFFFFF,
      );

      // Navigate to the appropriate screen after successful sign in
      // Get.toNamed(AppRoutes.registrationSuccessScreen);
    } catch (e) {
      Get.snackbar(
        'Error',
        'Sign in failed. Please try again.',
        backgroundColor: appTheme.colorFFFF52,
        colorText: appTheme.colorFFFFFF,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
