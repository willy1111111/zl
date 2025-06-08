import '../../../core/app_export.dart';

class UsdtWithdrawalModel {
  Rx<String>? cardNumber;
  Rx<String>? cardDate;
  Rx<String>? withdrawalAmount;
  Rx<String>? withdrawalFee;
  Rx<String>? exchangeRate;
  Rx<String>? paymentQuantity;
  Rx<String>? password;
  Rx<bool>? isAmountValid;

  UsdtWithdrawalModel({
    this.cardNumber,
    this.cardDate,
    this.withdrawalAmount,
    this.withdrawalFee,
    this.exchangeRate,
    this.paymentQuantity,
    this.password,
    this.isAmountValid,
  });
}
