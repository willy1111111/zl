import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [WalletBankAccountsWithdrawalScreen] screen with GetX.

class WalletBankAccountsWithdrawalModel {
  Rx<String>? withdrawalAmount;
  Rx<String>? password;
  Rx<String>? balanceAmount;
  Rx<String>? withdrawalFee;
  Rx<String>? availableAmount;
  Rx<bool>? isVerified;
  Rx<String>? withdrawalTimeRange;
  Rx<String>? withdrawalLimits;
  Rx<String>? totalRedemptionValue;
  Rx<String>? requiredBets;

  WalletBankAccountsWithdrawalModel({
    this.withdrawalAmount,
    this.password,
    this.balanceAmount,
    this.withdrawalFee,
    this.availableAmount,
    this.isVerified,
    this.withdrawalTimeRange,
    this.withdrawalLimits,
    this.totalRedemptionValue,
    this.requiredBets,
  }) {
    withdrawalAmount = withdrawalAmount ?? ''.obs;
    password = password ?? ''.obs;
    balanceAmount = balanceAmount ?? '₱1980.00'.obs;
    withdrawalFee = withdrawalFee ?? '₱0.00'.obs;
    availableAmount = availableAmount ?? '₱ 0'.obs;
    isVerified = isVerified ?? false.obs;
    withdrawalTimeRange = withdrawalTimeRange ?? '00:00 -23:59'.obs;
    withdrawalLimits = withdrawalLimits ?? '200-3000'.obs;
    totalRedemptionValue = totalRedemptionValue ?? '₱ 0'.obs;
    requiredBets = requiredBets ?? '135,999.19'.obs;
  }
}
