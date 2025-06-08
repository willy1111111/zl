import 'package:get/get.dart';
import '../../../core/app_export.dart';

class SpinGameCashWithdrawalModel {
  Rx<String>? withdrawalAmount;
  Rx<String>? progressPercentage;
  Rx<String>? remainingAmount;
  Rx<String>? mainTitle;
  Rx<String>? quickCashText;

  SpinGameCashWithdrawalModel({
    this.withdrawalAmount,
    this.progressPercentage,
    this.remainingAmount,
    this.mainTitle,
    this.quickCashText,
  }) {
    withdrawalAmount = withdrawalAmount ?? '₱92.59'.obs;
    progressPercentage = progressPercentage ?? '70%'.obs;
    remainingAmount = remainingAmount ?? '7.64'.obs;
    mainTitle = mainTitle ?? 'Get ₱500 for free'.obs;
    quickCashText = quickCashText ?? 'Quick cash withdrawl'.obs;
  }
}
