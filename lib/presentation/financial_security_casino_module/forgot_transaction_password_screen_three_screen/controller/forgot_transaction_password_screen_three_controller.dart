import 'package:flutter/material.dart';
import 'dart:async';
import '../models/forgot_transaction_password_screen_three_model.dart';
import '../../../core/app_export.dart';

class ForgotTransactionPasswordScreenThreeController extends GetxController {
  late TextEditingController phoneController;
  late TextEditingController newPasswordController;
  late TextEditingController confirmPasswordController;

  ForgotTransactionPasswordScreenThreeModel
      forgotTransactionPasswordScreenThreeModel =
      ForgotTransactionPasswordScreenThreeModel();

  Rx<String>? phoneValidationMessage = 'The mobile num is not valid'.obs;
  Rx<String>? smsValidationMessage =
      'Please enter a valid verification code'.obs;
  Rx<String>? passwordValidationMessage =
      'Please enter 6 characters,only numbers allowed'.obs;
  Rx<String>? confirmPasswordValidationMessage =
      'The password is not unified'.obs;

  Rx<String>? timerText = '59s'.obs;
  RxInt timerCount = 59.obs;
  Timer? timer;

  Rx<bool>? isNewPasswordHidden = true.obs;
  Rx<bool>? isConfirmPasswordHidden = true.obs;

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController(text: '123456789');
    newPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    startTimer();
  }

  @override
  void onClose() {
    phoneController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    timer?.cancel();
    super.onClose();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timerCount.value > 0) {
        timerCount.value--;
        timerText?.value = '${timerCount.value}s';
      } else {
        timer.cancel();
        timerText?.value = 'Resend';
      }
    });
  }

  void toggleNewPasswordVisibility() {
    isNewPasswordHidden?.value = !(isNewPasswordHidden?.value ?? true);
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordHidden?.value = !(isConfirmPasswordHidden?.value ?? true);
  }

  void onConfirmPressed() {
    if (validateForm()) {
      Get.snackbar(
        'Success',
        'Password reset confirmed',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: appTheme.greenCustom,
        colorText: appTheme.whiteCustom,
      );
    }
  }

  bool validateForm() {
    String phone = phoneController.text.trim();
    String newPassword = newPasswordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    if (phone.isEmpty || phone.length < 9) {
      phoneValidationMessage?.value = 'The mobile num is not valid';
      return false;
    }

    if (newPassword.isEmpty ||
        newPassword.length != 6 ||
        !RegExp(r'^[0-9]+$').hasMatch(newPassword)) {
      passwordValidationMessage?.value =
          'Please enter 6 characters,only numbers allowed';
      return false;
    }

    if (confirmPassword != newPassword) {
      confirmPasswordValidationMessage?.value = 'The password is not unified';
      return false;
    }

    return true;
  }
}
