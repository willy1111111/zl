import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [CryptoWalletWithdrawalDetailScreen] screen with GetX.

class CryptoWalletWithdrawalDetailModel {
  Rx<String>? balanceAmount;
  Rx<String>? cryptoType;
  Rx<String>? walletAddress;
  Rx<String>? currentDate;
  Rx<String>? withdrawalAvailable;
  Rx<String>? totalRedemptionValue;
  Rx<String>? remainingBets;
  Rx<String>? singleWithdrawalRange;
  Rx<String>? withdrawalFee;
  Rx<String>? withdrawalLimit;
  Rx<String>? withdrawalTime;

  CryptoWalletWithdrawalDetailModel({
    this.balanceAmount,
    this.cryptoType,
    this.walletAddress,
    this.currentDate,
    this.withdrawalAvailable,
    this.totalRedemptionValue,
    this.remainingBets,
    this.singleWithdrawalRange,
    this.withdrawalFee,
    this.withdrawalLimit,
    this.withdrawalTime,
  });
}
