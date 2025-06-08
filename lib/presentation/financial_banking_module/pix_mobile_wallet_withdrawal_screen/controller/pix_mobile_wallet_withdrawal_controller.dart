import 'package:flutter/material.dart';
import '../models/pix_mobile_wallet_withdrawal_model.dart';
import '../../../core/app_export.dart';

class PixMobileWalletWithdrawalController extends GetxController {
  // Observable variables
  final pixMobileWalletWithdrawalModel =
      Rx<PixMobileWalletWithdrawalModel?>(null);
  final isLoading = false.obs;

  // Text controllers
  late TextEditingController transactionPasswordController;

  @override
  void onInit() {
    super.onInit();
    transactionPasswordController = TextEditingController();
    pixMobileWalletWithdrawalModel.value = PixMobileWalletWithdrawalModel();
  }

  @override
  void onClose() {
    transactionPasswordController.dispose();
    super.onClose();
  }

  void onAddButtonPressed() {
    // Handle add button press
    Get.snackbar(
      'Add',
      'Add button pressed',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onEditAmountPressed() {
    // Handle edit amount press
    Get.snackbar(
      'Edit Amount',
      'Edit amount functionality',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onSubmitPressed() {
    if (transactionPasswordController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter transaction password',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: appTheme.colorFFE33F,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    isLoading.value = true;

    // Simulate API call
    Future.delayed(Duration(seconds: 2), () {
      isLoading.value = false;
      Get.snackbar(
        'Success',
        'Withdrawal request submitted successfully',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: appTheme.colorFF85D4,
        colorText: appTheme.whiteCustom,
      );
    });
  }

  void onWithdrawalRecordPressed() {
    // Navigate to withdrawal record screen
    Get.snackbar(
      'Withdrawal Record',
      'Navigating to withdrawal records',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
