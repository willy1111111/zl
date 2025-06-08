import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PixMobileVipWithdrawalLimitsModel {
  Rx<String>? cardNumber;
  Rx<String>? cardDate;
  Rx<String>? withdrawalTime;
  Rx<String>? withdrawalAvailable;
  Rx<String>? singleWithdrawalLimit;
  Rx<String>? withdrawalFeePercent;
  Rx<String>? dailyWithdrawalLimit;
  Rx<String>? totalRedemptionValue;
  Rx<String>? remainingBets;
  Rx<String>? currentAmount;
  Rx<String>? calculatedFee;
  Rx<String>? transactionPassword;

  PixMobileVipWithdrawalLimitsModel({
    this.cardNumber,
    this.cardDate,
    this.withdrawalTime,
    this.withdrawalAvailable,
    this.singleWithdrawalLimit,
    this.withdrawalFeePercent,
    this.dailyWithdrawalLimit,
    this.totalRedemptionValue,
    this.remainingBets,
    this.currentAmount,
    this.calculatedFee,
    this.transactionPassword,
  }) {
    cardNumber = cardNumber ?? '******8927'.obs;
    cardDate = cardDate ?? '2023-05-03'.obs;
    withdrawalTime =
        withdrawalTime ?? 'Withdrawaltime(GMT+8): 00:00 -00:00'.obs;
    withdrawalAvailable = withdrawalAvailable ?? '₱ 0'.obs;
    singleWithdrawalLimit = singleWithdrawalLimit ?? '10 - 999'.obs;
    withdrawalFeePercent = withdrawalFeePercent ?? '3%'.obs;
    dailyWithdrawalLimit = dailyWithdrawalLimit ?? '1 times/Day'.obs;
    totalRedemptionValue = totalRedemptionValue ?? '₱ 135'.obs;
    remainingBets = remainingBets ?? '135,999.19'.obs;
    currentAmount = currentAmount ?? '999'.obs;
    calculatedFee = calculatedFee ?? '₱0'.obs;
    transactionPassword = transactionPassword ?? ''.obs;
  }
}
