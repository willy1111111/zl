import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [WithdrawalConfirmationScreen] screen with GetX.

class WithdrawalConfirmationModel {
  Rx<String>? withdrawalAccount;
  Rx<String>? withdrawalMethod;
  Rx<String>? withdrawalAmount;
  Rx<bool>? isProcessing;

  WithdrawalConfirmationModel({
    this.withdrawalAccount,
    this.withdrawalMethod,
    this.withdrawalAmount,
    this.isProcessing,
  }) {
    withdrawalAccount = withdrawalAccount ?? '9409303930'.obs;
    withdrawalMethod = withdrawalMethod ?? 'Account wallet'.obs;
    withdrawalAmount = withdrawalAmount ?? '₱500.00'.obs;
    isProcessing = isProcessing ?? true.obs;
  }
}
