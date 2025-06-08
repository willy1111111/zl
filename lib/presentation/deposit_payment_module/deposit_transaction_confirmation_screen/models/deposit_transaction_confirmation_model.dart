import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [DepositTransactionConfirmationScreen] screen with GetX.

class DepositTransactionConfirmationModel {
  Rx<String>? amount;
  Rx<String>? depositMethod;
  Rx<String>? depositBank;
  Rx<String>? payeeAccountName;
  Rx<String>? payeeAccountNameEnglish;
  Rx<String>? cardNumber;
  Rx<String>? depositAmount;
  Rx<String>? orderNumber;
  Rx<String>? validityPeriod;

  DepositTransactionConfirmationModel({
    this.amount,
    this.depositMethod,
    this.depositBank,
    this.payeeAccountName,
    this.payeeAccountNameEnglish,
    this.cardNumber,
    this.depositAmount,
    this.orderNumber,
    this.validityPeriod,
  }) {
    amount ??= "150.00".obs;
    depositMethod ??= "h709394".obs;
    depositBank ??= "Union Bank of the Philippines".obs;
    payeeAccountName ??= "Tony".obs;
    payeeAccountNameEnglish ??= "Tony".obs;
    cardNumber ??= "109323578177".obs;
    depositAmount ??= "₱5,000".obs;
    orderNumber ??= "000000".obs;
    validityPeriod ??= "00:29:33".obs;
  }
}
