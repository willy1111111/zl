import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [WithdrawalLimitProgressScreen] screen with GetX.

class WithdrawalLimitProgressModel {
  // Observable variables for reactive state management
  Rx<String>? pixCardNumber = "******8927".obs;
  Rx<String>? pixCardDate = "2023-05-03".obs;
  Rx<String>? singleWithdrawalRange = "10 - 999".obs;
  Rx<String>? totalRedemptionValue = "₱ 135".obs;
  Rx<String>? remainingRequiredBets = "135,999.19".obs;
  Rx<String>? withdrawalTime = "00:00 -00:00".obs;
  Rx<String>? withdrawalAvailable = "₱ 0".obs;
  Rx<String>? currentAmount = "6000".obs;
  Rx<String>? balanceAmount = "₱1980.00".obs;
  Rx<String>? progressPercentage = "79%".obs;
  Rx<String>? nextStageRequiredBet = "200.88".obs;
  Rx<String>? nextStageWithdrawalLimit = "₱20".obs;
  Rx<String>? modalRemainingBets = "1314.19".obs;
  Rx<String>? totalRedemptionValueModal = "₱999.99".obs;
  Rx<bool>? isModalVisible = true.obs;

  // Simple constructor with no parameters
  WithdrawalLimitProgressModel();
}
