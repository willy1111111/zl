import 'package:get/get.dart';
import '../../../core/app_export.dart';

class CryptoWalletSetupPasswordModel {
  Rx<String>? selectedCryptoProduct;
  Rx<String>? walletAddress;
  Rx<String>? transactionPassword;
  Rx<String>? confirmPassword;
  Rx<bool>? isPasswordVisible;
  Rx<bool>? isConfirmPasswordVisible;

  CryptoWalletSetupPasswordModel({
    this.selectedCryptoProduct,
    this.walletAddress,
    this.transactionPassword,
    this.confirmPassword,
    this.isPasswordVisible,
    this.isConfirmPasswordVisible,
  });
}
