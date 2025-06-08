import '../../../core/app_export.dart';

class CryptoWalletWithdrawalModel {
  Rx<String>? withdrawalAmount;
  Rx<String>? withdrawalFee;
  Rx<String>? paymentQuantity;
  Rx<String>? exchangeRate;
  Rx<String>? password;
  Rx<bool>? isPasswordVisible;
  Rx<String>? balanceAmount;
  Rx<String>? totalRedemptionValue;
  Rx<String>? withdrawalAvailable;
  Rx<bool>? isVerified;

  CryptoWalletWithdrawalModel({
    this.withdrawalAmount,
    this.withdrawalFee,
    this.paymentQuantity,
    this.exchangeRate,
    this.password,
    this.isPasswordVisible,
    this.balanceAmount,
    this.totalRedemptionValue,
    this.withdrawalAvailable,
    this.isVerified,
  });
}
