import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/crypto_wallet_setup_model.dart';
import '../../../../core/app_export.dart';

class CryptoWalletSetupController extends GetxController {
  late TextEditingController walletAddressController;
  late TextEditingController transactionPasswordController;
  late TextEditingController confirmPasswordController;

  Rx<CryptoWalletSetupModel> cryptoWalletSetupModel =
      CryptoWalletSetupModel().obs;
  RxBool isDropdownVisible = false.obs;
  RxBool isTransactionPasswordVisible = false.obs;
  RxBool isConfirmPasswordVisible = false.obs;
  RxString selectedCryptoProduct = ''.obs;
  RxString walletAddress = ''.obs;
  RxString transactionPassword = ''.obs;
  RxString confirmPassword = ''.obs;

  @override
  void onInit() {
    super.onInit();
    walletAddressController = TextEditingController();
    transactionPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    cryptoWalletSetupModel.value = CryptoWalletSetupModel();
  }

  @override
  void onClose() {
    walletAddressController.dispose();
    transactionPasswordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  void toggleDropdown() {
    isDropdownVisible.value = !isDropdownVisible.value;
  }

  void selectCryptoProduct(String product) {
    selectedCryptoProduct.value = product;
    cryptoWalletSetupModel.value.selectedProduct?.value = product;
    isDropdownVisible.value = false;
  }

  void onWalletAddressChanged(String value) {
    walletAddress.value = value;
    cryptoWalletSetupModel.value.walletAddress?.value = value;
  }

  void onTransactionPasswordChanged(String value) {
    transactionPassword.value = value;
    cryptoWalletSetupModel.value.transactionPassword?.value = value;
  }

  void onConfirmPasswordChanged(String value) {
    confirmPassword.value = value;
    cryptoWalletSetupModel.value.confirmPassword?.value = value;
  }

  void toggleTransactionPasswordVisibility() {
    isTransactionPasswordVisible.value = !isTransactionPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  bool validateForm() {
    if (selectedCryptoProduct.value.isEmpty) {
      Get.snackbar('Error', 'Please select a crypto product');
      return false;
    }

    if (walletAddress.value.isEmpty) {
      Get.snackbar('Error', 'Please enter wallet address');
      return false;
    }

    if (transactionPassword.value.isEmpty) {
      Get.snackbar('Error', 'Please set transaction password');
      return false;
    }

    if (confirmPassword.value.isEmpty) {
      Get.snackbar('Error', 'Please confirm your password');
      return false;
    }

    if (transactionPassword.value != confirmPassword.value) {
      Get.snackbar('Error', 'Passwords do not match');
      return false;
    }

    return true;
  }

  void onSubmitPressed() {
    if (validateForm()) {
      Get.snackbar('Success', 'Crypto wallet setup completed successfully');
    }
  }
}
