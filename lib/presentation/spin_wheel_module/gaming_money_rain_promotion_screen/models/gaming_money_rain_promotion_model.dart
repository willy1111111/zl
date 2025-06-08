import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GamingMoneyRainPromotionModel {
  Rx<String>? userBalance;
  Rx<String>? jackpotAmount;
  Rx<String>? nextRoundTimer;
  Rx<bool>? showMoneyRainDialog;
  Rx<int>? selectedCategoryIndex;

  GamingMoneyRainPromotionModel({
    this.userBalance,
    this.jackpotAmount,
    this.nextRoundTimer,
    this.showMoneyRainDialog,
    this.selectedCategoryIndex,
  });
}
