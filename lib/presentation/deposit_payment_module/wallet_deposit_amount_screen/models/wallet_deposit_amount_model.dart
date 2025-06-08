import 'package:get/get.dart';
import '../../../core/app_export.dart';

class WalletDepositAmountModel {
  Rx<String>? currentBalance;
  Rx<String>? selectedAmount;
  Rx<bool>? isLoading;

  WalletDepositAmountModel({
    this.currentBalance,
    this.selectedAmount,
    this.isLoading,
  });
}
