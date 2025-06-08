import 'package:flutter/material.dart';
import '../models/electronic_wallet_withdrawal_model.dart';
import '../../../core/app_export.dart';

class ElectronicWalletWithdrawalController extends GetxController {
  final amountController = TextEditingController();
  final passwordController = TextEditingController();

  RxBool isPasswordVisible = false.obs;
  RxBool isSubmitting = false.obs;
  RxString withdrawalAmount = ''.obs;

  Rx<ElectronicWalletWithdrawalModel> electronicWalletWithdrawalModel =
      ElectronicWalletWithdrawalModel().obs;

  @override
  void onInit() {
    super.onInit();
    electronicWalletWithdrawalModel.value = ElectronicWalletWithdrawalModel();
  }

  @override
  void onClose() {
    amountController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !(isPasswordVisible.value ?? false);
  }

  void updateWithdrawalAmount(String value) {
    withdrawalAmount.value = value;
    electronicWalletWithdrawalModel.value.withdrawalAmount?.value = value;
  }

  void submitWithdrawal() async {
    if (!_validateForm()) return;

    isSubmitting.value = true;

    try {
      // Simulate API call
      await Future.delayed(Duration(seconds: 2));

      Get.snackbar(
        'Success',
        'Withdrawal request submitted successfully!',
        backgroundColor: appTheme.colorFF85D4,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );

      // Clear form
      amountController.clear();
      passwordController.clear();
      withdrawalAmount.value = '';
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to submit withdrawal request. Please try again.',
        backgroundColor: appTheme.colorFFF201,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );
    } finally {
      isSubmitting.value = false;
    }
  }

  bool _validateForm() {
    String amount = amountController.text.trim();
    String password = passwordController.text.trim();

    if (amount.isEmpty || password.isEmpty) {
      Get.snackbar(
        'Validation Error',
        'Please fill in all required fields',
        backgroundColor: appTheme.colorFFF201,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );
      return false;
    }

    double? amountValue = double.tryParse(amount);
    if (amountValue == null || amountValue < 200 || amountValue > 3000) {
      Get.snackbar(
        'Validation Error',
        'Withdrawal amount must be between 200-3000',
        backgroundColor: appTheme.colorFFF201,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );
      return false;
    }

    return true;
  }

  void navigateToWithdrawalRecord() {
    // Navigate to withdrawal record screen
    Get.snackbar(
      'Info',
      'Navigate to withdrawal record screen',
      backgroundColor: appTheme.colorFF3236,
      colorText: appTheme.whiteCustom,
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
