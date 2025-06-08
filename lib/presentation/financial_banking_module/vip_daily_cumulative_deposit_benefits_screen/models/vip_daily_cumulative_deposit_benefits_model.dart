import 'package:get/get.dart';
import '../../../core/app_export.dart';

class VipDailyCumulativeDepositBenefitsModel {
  Rx<String>? currentVip;
  Rx<String>? totalBetsToday;
  Rx<String>? estimatedCashback;
  Rx<String>? yesterdayBonus;
  Rx<String>? balanceAmount;

  VipDailyCumulativeDepositBenefitsModel({
    this.currentVip,
    this.totalBetsToday,
    this.estimatedCashback,
    this.yesterdayBonus,
    this.balanceAmount,
  }) {
    currentVip = currentVip ?? 'VIP1'.obs;
    totalBetsToday = totalBetsToday ?? '₱150.50'.obs;
    estimatedCashback = estimatedCashback ?? '₱2.90'.obs;
    yesterdayBonus = yesterdayBonus ?? '₱4933.70'.obs;
    balanceAmount = balanceAmount ?? '₱1980.00'.obs;
  }
}
