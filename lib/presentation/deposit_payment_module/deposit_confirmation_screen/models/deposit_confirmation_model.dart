import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [DepositConfirmationScreen] screen with GetX.

class DepositConfirmationModel {
  Rx<String>? amount;
  Rx<String>? depositAccount;
  Rx<String>? depositAmount;
  Rx<String>? successIconPath;
  Rx<String>? currencyIconPath;

  DepositConfirmationModel({
    this.amount,
    this.depositAccount,
    this.depositAmount,
    this.successIconPath,
    this.currencyIconPath,
  }) {
    amount = amount ?? '50000'.obs;
    depositAccount = depositAccount ?? 'h709394'.obs;
    depositAmount = depositAmount ?? '5,000'.obs;
    successIconPath =
        successIconPath ?? 'assets/images/img_group_12490.svg'.obs;
    currencyIconPath =
        currencyIconPath ?? 'assets/images/img_ellipse_25.svg'.obs;
  }
}
