import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [BonusDashboardScreen] screen with GetX.

class BonusDashboardModel {
  Rx<String>? totalBonusClaimed;
  Rx<String>? totalBonusAmount;
  Rx<String>? userBalance;

  BonusDashboardModel({
    this.totalBonusClaimed,
    this.totalBonusAmount,
    this.userBalance,
  }) {
    totalBonusClaimed = totalBonusClaimed ?? '₱100000.00'.obs;
    totalBonusAmount = totalBonusAmount ?? '₱100000.00'.obs;
    userBalance = userBalance ?? '₱1980.00'.obs;
  }
}
