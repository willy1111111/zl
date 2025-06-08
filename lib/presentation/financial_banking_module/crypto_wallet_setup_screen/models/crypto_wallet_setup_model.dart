import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class CryptoWalletSetupModel {
  Rx<String>? selectedProduct;
  Rx<String>? walletAddress;
  Rx<String>? transactionPassword;
  Rx<String>? confirmPassword;
  Rx<bool>? isDropdownVisible;
  Rx<bool>? isPasswordVisible;
  Rx<bool>? isConfirmPasswordVisible;

  CryptoWalletSetupModel({
    this.selectedProduct,
    this.walletAddress,
    this.transactionPassword,
    this.confirmPassword,
    this.isDropdownVisible,
    this.isPasswordVisible,
    this.isConfirmPasswordVisible,
  }) {
    selectedProduct = selectedProduct ?? ''.obs;
    walletAddress = walletAddress ?? ''.obs;
    transactionPassword = transactionPassword ?? ''.obs;
    confirmPassword = confirmPassword ?? ''.obs;
    isDropdownVisible = isDropdownVisible ?? false.obs;
    isPasswordVisible = isPasswordVisible ?? false.obs;
    isConfirmPasswordVisible = isConfirmPasswordVisible ?? false.obs;
  }
}
