import 'package:get/get.dart';
import '../../../core/app_export.dart';

class WithdrawalLimitNotificationModel {
  Rx<String>? cardNumber;
  Rx<String>? cardDate;
  Rx<String>? singleWithdrawalRange;
  Rx<String>? totalRedemptionValue;
  Rx<String>? withdrawalAvailable;
  Rx<String>? withdrawalAmount;
  Rx<String>? transactionPassword;
  Rx<String>? progressPercentage;
  Rx<String>? completedBets;
  Rx<String>? withdrawalLimit;
  Rx<String>? nextStageRequiredBet;
  Rx<String>? nextStageWithdrawalLimit;
  Rx<bool>? isModalVisible;

  WithdrawalLimitNotificationModel({
    this.cardNumber,
    this.cardDate,
    this.singleWithdrawalRange,
    this.totalRedemptionValue,
    this.withdrawalAvailable,
    this.withdrawalAmount,
    this.transactionPassword,
    this.progressPercentage,
    this.completedBets,
    this.withdrawalLimit,
    this.nextStageRequiredBet,
    this.nextStageWithdrawalLimit,
    this.isModalVisible,
  }) {
    cardNumber ??= '******8927'.obs;
    cardDate ??= '2023-05-03'.obs;
    singleWithdrawalRange ??= '10 - 999'.obs;
    totalRedemptionValue ??= '₱ 135'.obs;
    withdrawalAvailable ??= '₱ 0'.obs;
    withdrawalAmount ??= '6000'.obs;
    transactionPassword ??= ''.obs;
    progressPercentage ??= '79%'.obs;
    completedBets ??= '135,999.19'.obs;
    withdrawalLimit ??= '-'.obs;
    nextStageRequiredBet ??= '-'.obs;
    nextStageWithdrawalLimit ??= '-'.obs;
    isModalVisible ??= true.obs;
  }
}
