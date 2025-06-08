import 'package:flutter/material.dart';
import '../models/usdt_withdrawal_model.dart';
import '../../../core/app_export.dart';

class UsdtWithdrawalController extends GetxController {
  // Observable variables
  final isAmountValid = true.obs;
  final isPasswordVisible = false.obs;
  final usdtWithdrawalModel = Rx<UsdtWithdrawalModel?>(null);

  // Controllers
  late TextEditingController amountController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    super.onInit();
    amountController = TextEditingController();
    passwordController = TextEditingController();
    usdtWithdrawalModel.value = UsdtWithdrawalModel();
  }

  @override
  void onClose() {
    amountController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void onAmountChanged(String value) {
    if (value.isNotEmpty) {
      double amount = double.tryParse(value) ?? 0;
      isAmountValid.value = amount >= 200 && amount <= 3000;
      usdtWithdrawalModel.value?.withdrawalAmount?.value = value;
    } else {
      isAmountValid.value = true;
      usdtWithdrawalModel.value?.withdrawalAmount?.value = '';
    }
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void onAddButtonPressed() {
    Get.snackbar(
      'Add Wallet',
      'Add new wallet functionality',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.whiteCustom,
    );
  }

  void onBetNowPressed() {
    Get.snackbar(
      'Bet Now',
      'Redirecting to betting section...',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.whiteCustom,
    );
  }

  void onSubmitPressed() {
    String amount = amountController.text;
    String password = passwordController.text;

    if (amount.isEmpty || password.isEmpty) {
      Get.snackbar(
        'Error',
        'Please fill in all required fields',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: appTheme.colorFFF652,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    double? amountValue = double.tryParse(amount);
    if (amountValue == null || amountValue < 200 || amountValue > 3000) {
      Get.snackbar(
        'Error',
        'Withdrawal amount must be between 200-3000',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: appTheme.colorFFF652,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    Get.snackbar(
      'Success',
      'Withdrawal request submitted successfully!',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  void onWithdrawalRecordPressed() {
    Get.snackbar(
      'Withdrawal Record',
      'Opening withdrawal history...',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.whiteCustom,
    );
  }
}
