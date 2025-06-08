import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GamingCasinoVipRewardsModel {
  Rx<String>? balance;
  Rx<bool>? showVipDialog;
  Rx<String>? jackpotAmount;
  Rx<String>? rewardAmount;
  Rx<String>? timeLeft;

  GamingCasinoVipRewardsModel({
    this.balance,
    this.showVipDialog,
    this.jackpotAmount,
    this.rewardAmount,
    this.timeLeft,
  });
}
