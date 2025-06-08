import 'package:flutter/material.dart';
import '../models/crypto_wallet_setup_password_model.dart';
import '../../../core/app_export.dart';

class CryptoWalletSetupPasswordController extends GetxController {
  Rx<CryptoWalletSetupPasswordModel> cryptoWalletSetupPasswordModelObj =
      CryptoWalletSetupPasswordModel().obs;

  late TextEditingController walletAddressController;
  late TextEditingController transactionPasswordController;
  late TextEditingController confirmPasswordController;

  Rx<String> selectedCryptoProduct = ''.obs;
  RxBool isPasswordVisible = false.obs;
  RxBool isConfirmPasswordVisible = false.obs;
  RxBool isFormValid = false.obs;

  @override
  void onInit() {
    super.onInit();
    walletAddressController = TextEditingController();
    transactionPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void onClose() {
    walletAddressController.dispose();
    transactionPasswordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  void onCryptoProductTap() {
    // Handle dropdown selection
    selectedCryptoProduct.value = '＊ Crypto Product';
    _validateForm();
  }

  void onWalletAddressChanged(String value) {
    cryptoWalletSetupPasswordModelObj.value.walletAddress?.value = value;
    _validateForm();
  }

  void onTransactionPasswordChanged(String value) {
    cryptoWalletSetupPasswordModelObj.value.transactionPassword?.value = value;
    _validateForm();
  }

  void onConfirmPasswordChanged(String value) {
    cryptoWalletSetupPasswordModelObj.value.confirmPassword?.value = value;
    _validateForm();
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  void _validateForm() {
    bool isValid = selectedCryptoProduct.value.isNotEmpty &&
        walletAddressController.text.isNotEmpty &&
        transactionPasswordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty &&
        transactionPasswordController.text == confirmPasswordController.text;

    isFormValid.value = isValid;
  }

  void onSubmit() {
    if (isFormValid.value) {
      // Handle form submission
      Get.snackbar(
        'Success',
        'Crypto wallet setup completed successfully',
        backgroundColor: appTheme.colorFF85D4,
        colorText: appTheme.whiteCustom,
      );
    }
  }
}
