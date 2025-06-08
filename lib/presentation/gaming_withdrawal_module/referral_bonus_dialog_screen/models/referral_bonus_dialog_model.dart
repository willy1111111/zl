import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [ReferralBonusDialogScreen] screen with GetX.

class ReferralBonusDialogModel {
  Rx<String>? bonusAmount;
  Rx<String>? friendNumber;
  Rx<String>? withdrawalAmount;

  ReferralBonusDialogModel({
    this.bonusAmount,
    this.friendNumber,
    this.withdrawalAmount,
  }) {
    bonusAmount = bonusAmount ?? '+ ₱1500'.obs;
    friendNumber = friendNumber ?? '[+99*****39 ]'.obs;
    withdrawalAmount = withdrawalAmount ?? '[0.900]'.obs;
  }
}
