import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/crypto_wallet_password_setup_model.dart';
import '../../../core/app_export.dart';

class CryptoWalletPasswordSetupController extends GetxController {
  Rx<CryptoWalletPasswordSetupModel> cryptoWalletPasswordSetupModel =
      CryptoWalletPasswordSetupModel().obs;

  RxInt selectedWalletType = 2.obs;
  RxBool isPasswordObscured = true.obs;

  late TextEditingController withdrawalAmountController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    super.onInit();
    withdrawalAmountController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    withdrawalAmountController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void onSubmitPressed() {
    if (withdrawalAmountController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter withdrawal amount',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (passwordController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please confirm your password',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
  }

  void togglePasswordVisibility() {
    isPasswordObscured.value = !isPasswordObscured.value;
  }
}
