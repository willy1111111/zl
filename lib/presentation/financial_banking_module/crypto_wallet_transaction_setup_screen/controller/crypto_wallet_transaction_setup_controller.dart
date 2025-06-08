import 'package:flutter/material.dart';
import '../models/crypto_wallet_transaction_setup_model.dart';
import '../../../core/app_export.dart';

class CryptoWalletTransactionSetupController extends GetxController {
  // Text Controllers
  late TextEditingController walletAddressController;
  late TextEditingController transactionPasswordController;
  late TextEditingController confirmPasswordController;

  // Observable variables
  RxString selectedCryptoProduct = ''.obs;
  RxBool isDropdownOpen = false.obs;
  RxBool isTransactionPasswordVisible = false.obs;
  RxBool isConfirmPasswordVisible = false.obs;
  RxString walletAddress = ''.obs;
  RxString transactionPassword = ''.obs;
  RxString confirmPassword = ''.obs;

  // Model
  Rx<CryptoWalletTransactionSetupModel> cryptoWalletModel =
      CryptoWalletTransactionSetupModel().obs;

  @override
  void onInit() {
    super.onInit();
    walletAddressController = TextEditingController();
    transactionPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();

    // Initialize model
    cryptoWalletModel.value = CryptoWalletTransactionSetupModel();
  }

  @override
  void onClose() {
    walletAddressController.dispose();
    transactionPasswordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  void toggleDropdown() {
    isDropdownOpen.value = !isDropdownOpen.value;
  }

  void selectCryptoProduct(String product) {
    selectedCryptoProduct.value = product;
    cryptoWalletModel.value.selectedCrypto?.value = product;
    isDropdownOpen.value = false;
  }

  void updateWalletAddress(String address) {
    walletAddress.value = address;
    cryptoWalletModel.value.walletAddress?.value = address;
  }

  void updateTransactionPassword(String password) {
    transactionPassword.value = password;
    cryptoWalletModel.value.transactionPassword?.value = password;
  }

  void updateConfirmPassword(String password) {
    confirmPassword.value = password;
    cryptoWalletModel.value.confirmPassword?.value = password;
  }

  void toggleTransactionPasswordVisibility() {
    isTransactionPasswordVisible.value = !isTransactionPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  void onSubmitPressed() {
    if (_validateForm()) {
      Get.snackbar(
        'Success',
        'Transaction password set successfully!',
        backgroundColor: appTheme.colorFF85D4,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );
    }
  }

  bool _validateForm() {
    if (selectedCryptoProduct.value.isEmpty) {
      Get.snackbar(
        'Error',
        'Please select a crypto product',
        backgroundColor: appTheme.colorFFE031,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );
      return false;
    }

    if (walletAddress.value.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter wallet address',
        backgroundColor: appTheme.colorFFE031,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );
      return false;
    }

    if (transactionPassword.value.isEmpty) {
      Get.snackbar(
        'Error',
        'Please set transaction password',
        backgroundColor: appTheme.colorFFE031,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );
      return false;
    }

    if (confirmPassword.value.isEmpty) {
      Get.snackbar(
        'Error',
        'Please confirm your password',
        backgroundColor: appTheme.colorFFE031,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );
      return false;
    }

    if (transactionPassword.value != confirmPassword.value) {
      Get.snackbar(
        'Error',
        'Passwords do not match!',
        backgroundColor: appTheme.colorFFE031,
        colorText: appTheme.whiteCustom,
        snackPosition: SnackPosition.TOP,
      );
      return false;
    }

    return true;
  }
}
