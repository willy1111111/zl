import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used for amount option items in the [WalletDepositPaymentScreen] screen with GetX.

class AmountOptionModel {
  Rx<int>? amount;
  Rx<int>? bonusPercentage;
  Rx<bool>? isHot;
  Rx<bool>? isSelected;

  AmountOptionModel({
    this.amount,
    this.bonusPercentage,
    this.isHot,
    this.isSelected,
  });
}
