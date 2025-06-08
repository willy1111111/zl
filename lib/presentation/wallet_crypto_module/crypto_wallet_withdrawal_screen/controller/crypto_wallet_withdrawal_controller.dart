import 'package:flutter/material.dart';
import '../models/crypto_wallet_withdrawal_model.dart';
import '../../../core/app_export.dart';

class CryptoWalletWithdrawalController extends GetxController {
  late TextEditingController passwordController;

  Rx<CryptoWalletWithdrawalModel> cryptoWalletWithdrawalModel =
      CryptoWalletWithdrawalModel().obs;
  RxBool isPasswordHidden = true.obs;
  RxString withdrawalAmount = '2000'.obs;
  RxString withdrawalFee = '₱0.00'.obs;
  RxString paymentQuantity = '2000'.obs;
  RxString exchangeRate = '1 USDT=₱ 58'.obs;

  @override
  void onInit() {
    super.onInit();
    passwordController = TextEditingController();
    cryptoWalletWithdrawalModel.value = CryptoWalletWithdrawalModel();
  }

  @override
  void onClose() {
    passwordController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void updateWithdrawalAmount(String amount) {
    withdrawalAmount.value = amount;
    paymentQuantity.value = amount;
    cryptoWalletWithdrawalModel.value.withdrawalAmount?.value = amount;
  }

  void onSubmitPressed() {
    if (passwordController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please confirm your password',
        backgroundColor: appTheme.colorFFF652,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    if (withdrawalAmount.value.isEmpty ||
        double.tryParse(withdrawalAmount.value) == null) {
      Get.snackbar(
        'Error',
        'Please enter a valid withdrawal amount',
        backgroundColor: appTheme.colorFFF652,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    double amount = double.parse(withdrawalAmount.value);
    if (amount < 200 || amount > 3000) {
      Get.snackbar(
        'Error',
        'Withdrawal amount must be between 200-3000',
        backgroundColor: appTheme.colorFFF652,
        colorText: appTheme.whiteCustom,
      );
      return;
    }

    Get.snackbar(
      'Success',
      'Withdrawal request submitted successfully',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  void onVerifyNowPressed() {
    Get.snackbar(
      'Info',
      'Redirecting to verification screen',
      backgroundColor: appTheme.colorFFFFC6,
      colorText: appTheme.blackCustom,
    );
  }

  void onBetNowPressed() {
    Get.snackbar(
      'Info',
      'Redirecting to betting screen',
      backgroundColor: appTheme.colorFF51A0,
      colorText: appTheme.whiteCustom,
    );
  }

  void onWithdrawalRecordPressed() {
    Get.snackbar(
      'Info',
      'Opening withdrawal records',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }
}
