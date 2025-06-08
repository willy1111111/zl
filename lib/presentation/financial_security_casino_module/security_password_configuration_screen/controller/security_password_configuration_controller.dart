import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/security_password_configuration_model.dart';

class SecurityPasswordConfigurationController extends GetxController {
  // Text Controllers
  late TextEditingController oldPasswordController;
  late TextEditingController newPasswordController;
  late TextEditingController confirmNewPasswordController;
  late TextEditingController loginNewPasswordController;
  late TextEditingController loginConfirmPasswordController;

  // Observable variables
  RxBool isFundPasswordFormValid = false.obs;
  RxBool isLoginPasswordFormValid = false.obs;
  RxInt selectedTabIndex = 2.obs;

  // Model instance
  Rx<SecurityPasswordConfigurationModel> securityPasswordConfigurationModel =
      SecurityPasswordConfigurationModel().obs;

  @override
  void onInit() {
    super.onInit();
    _initializeControllers();
    _setInitialValues();
  }

  @override
  void onClose() {
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmNewPasswordController.dispose();
    loginNewPasswordController.dispose();
    loginConfirmPasswordController.dispose();
    super.onClose();
  }

  void _initializeControllers() {
    oldPasswordController = TextEditingController();
    newPasswordController = TextEditingController();
    confirmNewPasswordController = TextEditingController();
    loginNewPasswordController = TextEditingController();
    loginConfirmPasswordController = TextEditingController();
  }

  void _setInitialValues() {
    oldPasswordController.text = '123456789';
    isLoginPasswordFormValid.value = true;
  }

  void onTabChanged(int index) {
    selectedTabIndex.value = index;
    // Handle tab navigation based on index
    switch (index) {
      case 0:
        // Navigate to General settings
        break;
      case 1:
        // Navigate to Bank Account settings
        break;
      case 2:
        // Stay on Security settings
        break;
    }
  }

  void onNewPasswordChanged(String value) {
    securityPasswordConfigurationModel.value.newPassword = value.obs;
    _validateFundPasswordForm();
  }

  void onConfirmNewPasswordChanged(String value) {
    securityPasswordConfigurationModel.value.confirmNewPassword = value.obs;
    _validateFundPasswordForm();
  }

  void onLoginNewPasswordChanged(String value) {
    securityPasswordConfigurationModel.value.loginNewPassword = value.obs;
    _validateLoginPasswordForm();
  }

  void onLoginConfirmPasswordChanged(String value) {
    securityPasswordConfigurationModel.value.loginConfirmPassword = value.obs;
    _validateLoginPasswordForm();
  }

  void _validateFundPasswordForm() {
    bool isValid = newPasswordController.text.isNotEmpty &&
        confirmNewPasswordController.text.isNotEmpty &&
        newPasswordController.text == confirmNewPasswordController.text;

    isFundPasswordFormValid.value = isValid;
  }

  void _validateLoginPasswordForm() {
    bool isValid = loginNewPasswordController.text.isNotEmpty &&
        loginConfirmPasswordController.text.isNotEmpty &&
        loginNewPasswordController.text == loginConfirmPasswordController.text;

    isLoginPasswordFormValid.value = isValid;
  }

  void onFundPasswordSave() {
    if (isFundPasswordFormValid.value ?? false) {
      // Handle fund password save logic
      Get.snackbar(
        'Success',
        'Fund password updated successfully',
        backgroundColor: appTheme.colorFF76CD,
        colorText: appTheme.whiteCustom,
      );
    } else {
      Get.snackbar(
        'Error',
        'Please fill all fields correctly',
        backgroundColor: appTheme.colorFFFF52,
        colorText: appTheme.whiteCustom,
      );
    }
  }

  void onLoginPasswordSave() {
    if (isLoginPasswordFormValid.value ?? false) {
      // Handle login password save logic
      Get.snackbar(
        'Success',
        'Login password created successfully',
        backgroundColor: appTheme.colorFF76CD,
        colorText: appTheme.whiteCustom,
      );
    } else {
      Get.snackbar(
        'Error',
        'Please fill all fields correctly',
        backgroundColor: appTheme.colorFFFF52,
        colorText: appTheme.whiteCustom,
      );
    }
  }

  void onForgotPasswordTap() {
    // Navigate to forgot password screen
    Get.toNamed(AppRoutes.forgotTransactionPasswordScreen);
  }
}
