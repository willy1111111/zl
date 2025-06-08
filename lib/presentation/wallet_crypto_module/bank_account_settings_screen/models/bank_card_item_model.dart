import 'package:get/get.dart';
import '../../../core/app_export.dart';

class BankCardItemModel {
  Rx<String>? cardType;
  Rx<String>? cardNumber;
  Rx<String>? cardHolderName;
  Rx<String>? date;
  Rx<String>? iconPath;
  Rx<int>? gradientType;
  Rx<bool>? isCapitalized;

  BankCardItemModel({
    this.cardType,
    this.cardNumber,
    this.cardHolderName,
    this.date,
    this.iconPath,
    this.gradientType,
    this.isCapitalized,
  });
}
