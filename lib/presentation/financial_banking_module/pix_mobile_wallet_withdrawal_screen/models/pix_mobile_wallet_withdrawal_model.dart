import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [PixMobileWalletWithdrawalScreen] screen with GetX.

class PixMobileWalletWithdrawalModel {
  // Observable variables for reactive state management
  Rx<String>? cardNumber = "******8927".obs;
  Rx<String>? cardDate = "2023-05-03".obs;
  Rx<String>? balanceAmount = "₱1980.00".obs;
  Rx<String>? withdrawalTime = "Withdrawaltime(GMT+8): 00:00 -00:00".obs;
  Rx<String>? singleWithdrawalRange = "10 - 999".obs;
  Rx<String>? totalRedemptionValue = "₱ 135".obs;
  Rx<String>? withdrawalAvailable = "₱ 0".obs;
  Rx<String>? amount = "999".obs;
  Rx<String>? remainingBets = "135,999.19".obs;
  Rx<bool>? isSubmitEnabled = true.obs;

  // Simple constructor with no parameters
  PixMobileWalletWithdrawalModel();
}
