import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/withdrawal_limit_progress_model.dart';

class WithdrawalLimitProgressController extends GetxController {
  Rx<WithdrawalLimitProgressModel> withdrawalLimitProgressModel =
      WithdrawalLimitProgressModel().obs;

  // Observable variables for reactive state management
  RxBool isModalVisible = false.obs;
  RxBool isLoading = false.obs;
  RxString withdrawalAmount = '6000'.obs;
  RxString availableBalance = '₱1980.00'.obs;
  RxString totalRedemptionValue = '₱ 135'.obs;
  RxString remainingBets = '135,999.19'.obs;
  RxString withdrawalAvailable = '₱ 0'.obs;
  RxString progressPercentage = '79%'.obs;
  RxString nextStageRequiredBet = '200.88'.obs;
  RxString nextStageWithdrawalLimit = '₱20'.obs;
  RxString remainingRequiredBets = '1314.19'.obs;
  RxString totalRedemptionValueModal = '₱999.99'.obs;

  // Text controllers
  late TextEditingController transactionPasswordController;
  late TextEditingController amountController;

  @override
  void onInit() {
    super.onInit();
    transactionPasswordController = TextEditingController();
    amountController = TextEditingController();
    withdrawalLimitProgressModel.value = WithdrawalLimitProgressModel();
  }

  @override
  void onReady() {
    super.onReady();
    // Show modal by default as per the HTML design
    isModalVisible.value = true;
  }

  @override
  void onClose() {
    transactionPasswordController.dispose();
    amountController.dispose();
    super.onClose();
  }

  void onSubmitPressed() {
    if (transactionPasswordController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter transaction password',
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
        backgroundColor: appTheme.colorFF85D4,
        colorText: appTheme.whiteCustom,
      );
    });
  }

  void onWithdrawalRecordTapped() {
    // Navigate to withdrawal record screen
    // Get.toNamed(AppRoutes.withdrawalRecordScreen);
  }

  void closeModal() {
    isModalVisible.value = false;
  }

  void showModal() {
    isModalVisible.value = true;
  }

  void onAmountChanged(String value) {
    withdrawalAmount.value = value;
  }

  void onTransactionPasswordChanged(String value) {
    // Handle password input
  }

  void onBetNowTapped() {
    // Navigate to betting screen
    // Get.toNamed(AppRoutes.bettingScreen);
  }
}
