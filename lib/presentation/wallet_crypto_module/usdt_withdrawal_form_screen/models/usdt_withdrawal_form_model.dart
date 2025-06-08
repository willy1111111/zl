import 'package:get/get.dart';
import '../../../core/app_export.dart';

class UsdtWithdrawalFormModel {
  Rx<int> selectedTabIndex = 2.obs;
  Rx<String> walletBalance = '₱1980.00'.obs;
  Rx<String> cryptoWalletAddress = 'TP****LfXH'.obs;
  Rx<String> cryptoWalletDate = '2025-01-03'.obs;
  Rx<String> withdrawalFee = '0%'.obs;
  Rx<String> withdrawalLimit = '200-3000'.obs;
  Rx<String> totalRedemptionValue = '₱ 0'.obs;
  Rx<String> withdrawalAvailable = '₱ 0'.obs;
  Rx<String> exchangeRate = '1 USDT=₱ 58'.obs;
  Rx<String> amount = '2000'.obs;
  Rx<String> withdrawalFeeAmount = '₱0.00'.obs;
  Rx<bool> isPasswordVisible = false.obs;

  UsdtWithdrawalFormModel();
}
