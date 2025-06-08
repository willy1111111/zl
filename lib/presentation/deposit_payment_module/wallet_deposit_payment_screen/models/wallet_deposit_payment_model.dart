import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [WalletDepositPaymentScreen] screen with GetX.

class WalletDepositPaymentModel {
  Rx<String>? walletBalance;
  Rx<String>? currencySymbol;
  Rx<int>? selectedPaymentMethod;
  Rx<int>? selectedBankOption;
  Rx<int>? selectedAmountOption;
  Rx<bool>? activityParticipation;
  Rx<bool>? nonParticipation;

  WalletDepositPaymentModel({
    this.walletBalance,
    this.currencySymbol,
    this.selectedPaymentMethod,
    this.selectedBankOption,
    this.selectedAmountOption,
    this.activityParticipation,
    this.nonParticipation,
  });
}
