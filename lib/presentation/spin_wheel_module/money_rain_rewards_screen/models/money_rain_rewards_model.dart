import 'package:get/get.dart';

import '../../../core/app_export.dart';

class MoneyRainRewardsModel {
  Rx<String>? userBalance;
  Rx<String>? nextRoundTimer;
  Rx<String>? rewardAmount;
  Rx<bool>? showMoneyRainModal;
  Rx<String>? jackpotAmount;

  MoneyRainRewardsModel({
    this.userBalance,
    this.nextRoundTimer,
    this.rewardAmount,
    this.showMoneyRainModal,
    this.jackpotAmount,
  });
}
