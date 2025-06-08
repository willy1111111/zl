import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [CryptoWalletTransactionSetupScreen] screen with GetX.

class CryptoWalletTransactionSetupModel {
  // Observable variables for reactive state management
  Rx<String>? selectedCrypto = 'Crypto Product'.obs;
  Rx<String>? walletAddress = ''.obs;
  Rx<String>? transactionPassword = ''.obs;
  Rx<String>? confirmPassword = ''.obs;
  Rx<bool>? isDropdownOpen = false.obs;
  Rx<bool>? isPasswordVisible = false.obs;
  Rx<bool>? isConfirmPasswordVisible = false.obs;

  // Simple constructor with no parameters
  CryptoWalletTransactionSetupModel();
}
