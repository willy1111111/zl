import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/j_bet88_login_screen_two_model.dart';

class JBet88LoginScreenTwoController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController verificationCodeController = TextEditingController();

  Rx<JBet88LoginScreenTwoModel> jBet88LoginScreenTwoModel =
      JBet88LoginScreenTwoModel().obs;
  Rx<String>? phoneNumber = '1234567890'.obs;
  RxBool isPasswordVisible = false.obs;
  RxBool isRememberPasswordChecked = false.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    jBet88LoginScreenTwoModel.value = JBet88LoginScreenTwoModel();
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

  void toggleRememberPassword() {
    isRememberPasswordChecked.value =
        !(isRememberPasswordChecked.value ?? false);
  }

  void onLoginPressed() async {
    isLoading.value = true;

    // Simulate login process
    await Future.delayed(Duration(seconds: 1));

    // Add your login logic here
    Get.snackbar(
      'Login',
      'Login functionality to be implemented',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );

    isLoading.value = false;
  }

  void onForgotPasswordPressed() {
    Get.snackbar(
      'Forgot Password',
      'Forgot password functionality to be implemented',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  void onRegisterPressed() {
    Get.toNamed(AppRoutes.jBet88RegistrationScreen);
  }

  void onGoogleLoginPressed() {
    Get.snackbar(
      'Google Login',
      'Google login functionality to be implemented',
      backgroundColor: appTheme.colorFF4285,
      colorText: appTheme.whiteCustom,
    );
  }

  void onTelegramLoginPressed() {
    Get.snackbar(
      'Telegram Login',
      'Telegram login functionality to be implemented',
      backgroundColor: appTheme.colorFF0088,
      colorText: appTheme.whiteCustom,
    );
  }

  void onJoinTelegramPressed() {
    Get.snackbar(
      'Join Telegram',
      'Join Telegram community functionality to be implemented',
      backgroundColor: appTheme.colorFF0088,
      colorText: appTheme.whiteCustom,
    );
  }
}
