import 'package:flutter/material.dart';
import '../models/forgot_password_screen_two_model.dart';
import '../../../../core/app_export.dart';

class ForgotPasswordScreenTwoController extends GetxController {
  late TextEditingController emailController;

  ForgotPasswordScreenTwoModel forgotPasswordScreenTwoModel =
      ForgotPasswordScreenTwoModel();

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }

  void onSendPressed() {
    String email = emailController.text.trim();

    if (email.isNotEmpty) {
      // Simulate sending reset email
      Get.snackbar(
        'Success',
        'Password reset link sent to $email',
        backgroundColor: appTheme.colorFF4CAF,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: 3),
      );
      emailController.clear();
    } else {
      Get.snackbar(
        'Error',
        'Please enter your email or username',
        backgroundColor: appTheme.colorFFF443,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: 3),
      );
    }
  }
}
