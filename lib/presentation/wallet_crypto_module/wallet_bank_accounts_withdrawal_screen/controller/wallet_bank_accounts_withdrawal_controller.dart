import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/wallet_bank_accounts_withdrawal_model.dart';

class WalletBankAccountsWithdrawalController extends GetxController {
  late TextEditingController withdrawalAmountController;
  late TextEditingController passwordController;

  final walletBankAccountsWithdrawalModel =
      Rx<WalletBankAccountsWithdrawalModel?>(null);
  final isPasswordVisible = false.obs;
  final withdrawalAmount = ''.obs;
  final password = ''.obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    withdrawalAmountController = TextEditingController();
    passwordController = TextEditingController();
    walletBankAccountsWithdrawalModel.value =
        WalletBankAccountsWithdrawalModel();
  }

  @override
  void onClose() {
    withdrawalAmountController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void updateWithdrawalAmount(String value) {
    withdrawalAmount.value = value;
    walletBankAccountsWithdrawalModel.value?.withdrawalAmount?.value = value;
  }

  void updatePassword(String value) {
    password.value = value;
    walletBankAccountsWithdrawalModel.value?.password?.value = value;
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void onSubmitPressed() async {
    if (_validateInputs()) {
      isLoading.value = true;

      try {
        // Simulate withdrawal processing
        await Future.delayed(Duration(seconds: 2));

        Get.snackbar(
          'Success',
          'Withdrawal request submitted successfully',
          backgroundColor: appTheme.colorFF85D4,
          colorText: appTheme.whiteCustom,
        );

        // Clear form after successful submission
        _clearForm();
      } catch (e) {
        Get.snackbar(
          'Error',
          'Failed to submit withdrawal request',
          backgroundColor: appTheme.redCustom,
          colorText: appTheme.whiteCustom,
        );
      } finally {
        isLoading.value = false;
      }
    }
  }

  void onVerifyNowPressed() {
    Get.snackbar(
      'Verification',
      'Redirecting to phone verification...',
      backgroundColor: appTheme.colorFFFFC6,
      colorText: appTheme.blackCustom,
    );
  }

  void onBetNowPressed() {
    Get.snackbar(
      'Bet Now',
      'Redirecting to betting section...',
      backgroundColor: appTheme.colorFF51A0,
      colorText: appTheme.whiteCustom,
    );
  }

  void onWithdrawalRecordPressed() {
    Get.snackbar(
      'Withdrawal Record',
      'Opening withdrawal history...',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  void onAddBankAccountPressed() {
    Get.toNamed(AppRoutes.bankAccountSettingsScreen);
  }

  bool _validateInputs() {
    if (withdrawalAmount.value.isEmpty) {
      Get.snackbar(
        'Validation Error',
        'Please enter withdrawal amount',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return false;
    }

    double? amount = double.tryParse(withdrawalAmount.value);
    if (amount == null || amount < 200 || amount > 3000) {
      Get.snackbar(
        'Validation Error',
        'Withdrawal amount must be between 200-3000',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return false;
    }

    if (password.value.isEmpty) {
      Get.snackbar(
        'Validation Error',
        'Please enter your password',
        backgroundColor: appTheme.redCustom,
        colorText: appTheme.whiteCustom,
      );
      return false;
    }

    return true;
  }

  void _clearForm() {
    withdrawalAmountController.clear();
    passwordController.clear();
    withdrawalAmount.value = '';
    password.value = '';
    walletBankAccountsWithdrawalModel.value?.withdrawalAmount?.value = '';
    walletBankAccountsWithdrawalModel.value?.password?.value = '';
  }
}
