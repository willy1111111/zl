import 'package:get/get.dart';
import '../../../core/app_export.dart';

class DepositBonusItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<String>? totalAmount;
  Rx<String>? firstDepositPercentage;
  Rx<String>? secondDepositPercentage;
  Rx<String>? firstDailyDepositPercentage;
  Rx<String>? fixedPaymentMethodPercentage;
  Rx<String>? actionText;

  DepositBonusItemModel({
    this.iconPath,
    this.title,
    this.totalAmount,
    this.firstDepositPercentage,
    this.secondDepositPercentage,
    this.firstDailyDepositPercentage,
    this.fixedPaymentMethodPercentage,
    this.actionText,
  });
}
