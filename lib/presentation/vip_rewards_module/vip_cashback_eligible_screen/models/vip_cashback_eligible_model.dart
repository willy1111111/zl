import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipCashbackEligibleModel {
  Rx<String>? title;
  Rx<String>? amount;
  Rx<String>? expectedWinAmount;
  Rx<String>? currentLevel;
  Rx<String>? cashbackPercentage;
  Rx<String>? maxCashbackPercentage;
  Rx<String>? statisticsTime;
  Rx<String>? claimTime;
  Rx<bool>? isClaimable;

  VipCashbackEligibleModel({
    this.title,
    this.amount,
    this.expectedWinAmount,
    this.currentLevel,
    this.cashbackPercentage,
    this.maxCashbackPercentage,
    this.statisticsTime,
    this.claimTime,
    this.isClaimable,
  });
}
