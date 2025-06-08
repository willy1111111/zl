import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [WalletWithdrawalRequirementsScreen] screen with GetX.
class WalletWithdrawalRequirementsModel {
  // Observable variables for reactive state management
  Rx<String> walletBalance = "₱1980.00".obs;
  Rx<String> mainWallet = "₱ 100.00".obs;
  Rx<String> withdrawAmount = "₱ 120.00".obs;
  Rx<String> cardNumber = "******8927".obs;
  Rx<String> cardDate = "2023-05-03".obs;
  Rx<String> withdrawalTime = "Withdrawaltime(GMT+8): 00:00 -00:00".obs;
  Rx<String> singleWithdrawalRange = "10 - 999".obs;
  Rx<String> warningMessage =
      "Please complete the required turnover for withdrawal.".obs;
  Rx<String> modalTitle = "Title/标题".obs;
  Rx<String> modalDescription =
      "Upgrading your VIP level canincrease your single withdrawallimit".obs;
  Rx<bool> isModalOpen = false.obs;

  // Simple constructor with no parameters
  WalletWithdrawalRequirementsModel();
}
