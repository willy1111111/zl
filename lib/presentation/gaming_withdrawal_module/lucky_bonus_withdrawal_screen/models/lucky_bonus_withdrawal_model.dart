import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [LuckyBonusWithdrawalScreen] screen with GetX.

class LuckyBonusWithdrawalModel {
  // Observable variables for reactive state management
  Rx<String>? idNumber = "151361146".obs;
  Rx<String>? balance = "₱92.36".obs;
  Rx<String>? amountNeeded = "7.64".obs;
  Rx<String>? progressPercentage = "70%".obs;

  // Simple constructor with no parameters
  LuckyBonusWithdrawalModel();
}
