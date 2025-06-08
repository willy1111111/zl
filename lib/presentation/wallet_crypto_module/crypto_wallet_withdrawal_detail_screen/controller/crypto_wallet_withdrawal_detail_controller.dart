import 'package:flutter/material.dart';
import '../models/crypto_wallet_withdrawal_detail_model.dart';
import '../../../core/app_export.dart';

class CryptoWalletWithdrawalDetailController extends GetxController {
  late TextEditingController amountController;
  late TextEditingController passwordController;

  Rx<CryptoWalletWithdrawalDetailModel> model =
      CryptoWalletWithdrawalDetailModel().obs;

  RxString enteredAmount = ''.obs;
  RxString enteredPassword = ''.obs;
  RxBool isFormValid = false.obs;

  @override
  void onInit() {
    super.onInit();
    amountController = TextEditingController();
    passwordController = TextEditingController();

    model.value = CryptoWalletWithdrawalDetailModel(
      balanceAmount: '₱1980.00'.obs,
      cryptoType: 'USDT(TRC20)'.obs,
      walletAddress: 'TP****LfXH'.obs,
      currentDate: '2025-01-03'.obs,
      withdrawalAvailable: '₱ 0'.obs,
      totalRedemptionValue: '₱ 0'.obs,
      remainingBets: '135,999.19'.obs,
      singleWithdrawalRange: '200-3000'.obs,
      withdrawalFee: '0%'.obs,
      withdrawalLimit: 'limited'.obs,
      withdrawalTime: '00:00 -23:59'.obs,
    );
  }

  @override
  void onClose() {
    amountController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void onAmountChanged(String value) {
    enteredAmount.value = value;
    _validateForm();
  }

  void onPasswordChanged(String value) {
    enteredPassword.value = value;
    _validateForm();
  }

  void _validateForm() {
    isFormValid.value =
        enteredAmount.value.isNotEmpty && enteredPassword.value.isNotEmpty;
  }

  void onSubmitPressed() {
    if (isFormValid.value) {
      // Handle withdrawal submission
      Get.snackbar(
        'Withdrawal Request',
        'Processing withdrawal of ${enteredAmount.value}',
        backgroundColor: appTheme.colorFF85D4,
        colorText: appTheme.whiteCustom,
      );
    } else {
      Get.snackbar(
        'Error',
        'Please fill in all required fields',
        backgroundColor: appTheme.colorFFF652,
        colorText: appTheme.whiteCustom,
      );
    }
  }

  void onWithdrawalRecordPressed() {
    // Navigate to withdrawal record screen
    Get.snackbar(
      'Navigation',
      'Opening withdrawal records',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  void onBetNowPressed() {
    // Navigate to betting screen
    Get.snackbar(
      'Navigation',
      'Opening betting screen',
      backgroundColor: appTheme.colorFF51A0,
      colorText: appTheme.whiteCustom,
    );
  }
}
