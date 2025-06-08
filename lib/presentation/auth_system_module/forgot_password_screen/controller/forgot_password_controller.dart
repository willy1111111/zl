import 'package:flutter/material.dart';
import '../models/forgot_password_model.dart';
import '../../../../../core/app_export.dart';

class ForgotPasswordController extends GetxController {
  late TextEditingController emailController;

  RxBool isLoading = false.obs;
  RxBool isEmailValid = false.obs;
  RxString errorMessage = ''.obs;

  Rx<ForgotPasswordModel> forgotPasswordModel = ForgotPasswordModel().obs;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    emailController.addListener(_validateEmail);
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }

  void _validateEmail() {
    String email = emailController.text.trim();
    isEmailValid.value = _isValidEmail(email);
    errorMessage.value = '';
  }

  bool _isValidEmail(String email) {
    if (email.isEmpty) return false;

    // Check if it's an email or username
    if (email.contains('@')) {
      return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
    } else {
      return email.length >= 3; // Username validation
    }
  }

  void sendRecoveryEmail() async {
    String emailOrUsername = emailController.text.trim();

    if (emailOrUsername.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter your email or username',
        backgroundColor: appTheme.colorFFEF44,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    if (!isEmailValid.value) {
      Get.snackbar(
        'Error',
        'Please enter a valid email or username',
        backgroundColor: appTheme.colorFFEF44,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    isLoading.value = true;

    try {
      // Simulate API call for password recovery
      await Future.delayed(Duration(seconds: 2));

      Get.snackbar(
        'Success',
        'Recovery instructions sent to your email',
        backgroundColor: appTheme.colorFF10B9,
        colorText: appTheme.whiteCustom,
      );

      // Navigate to next screen or back
      await Future.delayed(Duration(seconds: 1));
      Get.back();
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to send recovery email. Please try again.',
        backgroundColor: appTheme.colorFFEF44,
        colorText: appTheme.whiteCustom,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
