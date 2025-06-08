import 'package:get/get.dart';
import '../../../core/app_export.dart';

class ElectronicWalletWithdrawalModel {
  Rx<String>? withdrawalAmount;
  Rx<String>? password;
  Rx<String>? balanceAmount;
  Rx<String>? withdrawalFee;
  Rx<String>? totalRedemptionValue;
  Rx<String>? withdrawalAvailable;
  Rx<bool>? isPasswordVisible;
  Rx<bool>? isProcessing;

  ElectronicWalletWithdrawalModel({
    this.withdrawalAmount,
    this.password,
    this.balanceAmount,
    this.withdrawalFee,
    this.totalRedemptionValue,
    this.withdrawalAvailable,
    this.isPasswordVisible,
    this.isProcessing,
  });
}
