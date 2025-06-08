import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GamingWithdrawalConfirmationModel {
  Rx<String>? mainTitle;
  Rx<String>? quickCashText;
  Rx<String>? amount;
  Rx<String>? withdrawalAccount;
  Rx<String>? withdrawalMethod;
  Rx<String>? taskProgressText;

  GamingWithdrawalConfirmationModel({
    this.mainTitle,
    this.quickCashText,
    this.amount,
    this.withdrawalAccount,
    this.withdrawalMethod,
    this.taskProgressText,
  }) {
    mainTitle = mainTitle ?? 'Get ₱500 for free'.obs;
    quickCashText = quickCashText ?? 'Quick cash withdrawl'.obs;
    amount = amount ?? '₱92.59'.obs;
    withdrawalAccount = withdrawalAccount ?? '9409303930'.obs;
    withdrawalMethod = withdrawalMethod ?? 'Account wallet'.obs;
    taskProgressText = taskProgressText ?? '₱7.64 Remaining task progress'.obs;
  }
}
