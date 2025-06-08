import 'package:get/get.dart';
import '../../../core/app_export.dart';

class VipDailyCumulativeDepositBenefitsDetailModel {
  Rx<String>? currentVip;
  Rx<String>? totalBetsToday;
  Rx<String>? estimatedCashback;
  Rx<String>? bonusFromYesterday;
  Rx<String>? balanceAmount;

  VipDailyCumulativeDepositBenefitsDetailModel({
    this.currentVip,
    this.totalBetsToday,
    this.estimatedCashback,
    this.bonusFromYesterday,
    this.balanceAmount,
  });
}
