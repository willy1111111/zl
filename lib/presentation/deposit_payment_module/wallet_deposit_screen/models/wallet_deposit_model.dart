import 'package:get/get.dart';
import '../../../core/app_export.dart';

class WalletDepositModel {
  Rx<String>? selectedPaymentMethod;
  Rx<String>? selectedBank;
  Rx<String>? depositAmount;
  Rx<bool>? isActivityRewardSelected;

  WalletDepositModel({
    this.selectedPaymentMethod,
    this.selectedBank,
    this.depositAmount,
    this.isActivityRewardSelected,
  });
}
